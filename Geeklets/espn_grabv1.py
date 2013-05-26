#!/usr/bin/env python

""" ESPN SCOREBOARD PARSER V1
 ROBERT WOLTERMAN (xtacocorex) - 2011

 GRABS THE LIVE SCOREBOARD DATA FROM espn.com
 
 SCRIPT HAS THE ABILITY TO:
 1 - FILTER SCOREBOARD TO DISPLAY ONLY THE SPORT YOU CARE ABOUT
 2 - IF DISPLAYING ALL THE SPORTS, YOU CAN SORT BASED UPON SPORT OR LEAGUE
 3 - CHANGE ORIENTATION OF SCOREBOARD DISPLAY
 
 CURRENT SPORTS THAT ARE SUPPORTED:
 - NFL
 - NBA
 - NHL
 - GOLF
 - MLB
 - NCAAM
 - NCAAW
 - NCAAF
 
 
 *** MAKE SURE TO SET THE REFRESH RATE IN GEEKTOOL/NERDTOOL TO A REASONABLE VALUE
"""

# CHANGELOG
# 31 DECEMBER 2011
#  - FORGOT A STRING FORMATTING SETTING WHEN DISPLAYING TEXT HORIZONTALLY
# 29 DECEMBER 2011
#  - INITIAL WRITE

# MODULE IMPORTS
import urllib, re, os, sys, ast, optparse, htmlentitydefs
from sgmllib import SGMLParser

# GLOBAL VARIABLES
URL         = "http://www.espn.go.com"

# UPDATE SPORTSLIST AS NEEDED, FIGURE THIS WILL GROW AS SEASONS CHANGE AND
# DIFFERENT SPORTS ARE PLAYED
SPORTSLIST1 = ['baseball', 'mlb', 'nba', 'ncb', 'ncf', 'ncw', 'nfl', 'nhl', 'rugby', 'soccer', 'tennis', 'wnba']
SPORTSLIST2 = ['nflfantasy', 'pga', 'rpm']
ORIENTLIST  = ['horizontal','vertical']
GROUPOPTS   = ['sport','none']
SHOWOPTS    = ['complete','inprocess','upcoming']
DEBUG       = False
COLWIDTH    = 12

# ASCII ESCAPE SEQUENCES - CURRENTLY NOT USED, BUT MAYBE IN THE FUTURE
RESET       = "\x1B[0m"
UNDERLINE   = "\x1B[4m"

# MyHTMLParser CLASS IS USED FOR PARSING THE HTML DATA
# GOAL IS TO GET THE JSON OUT OF A SCRIPT TAG
class MyHTMLParser(SGMLParser):
    def reset(self):                              
        SGMLParser.reset(self)
        # START WITH A FRESH STRING
        self.mystr = ""
        # INITIALIZE inside_x_element TO BE FALSE
        self.inside_script_element = False
        self.start_json = False

    def start_script(self, attrs):                     
        # SINCE WE'RE IN A SCRIPT TAG, SET OUR inside_script_element TO TRUE
        self.inside_script_element = True
            
    def handle_data(self, text): 
        # GET TEXT STRIPPED
        # IF SO, STRIP OFF EVERYTHING TO THE RIGHT AND LEFT OF THE TEXT
        tmp = text.lstrip().rstrip()
        
        # DETERMINE IF WE'RE INSIDE THE SCRIPT TAG
        if self.inside_script_element:

            # APPEND THE TEXT TO OUR LIST OF A TAG DATA
            mat = re.search("var sbMaster.*",tmp,re.DOTALL)
            if mat != None:
                self.start_json = True
                self.mystr = tmp

    def end_script(self):
        # SINCE WE'RE EXITING A TAG, SET OUR inside_script_element TO FALSE
        self.inside_script_element = False
        self.start_json = False 

# =============
# HTML ENTITY CONVERSION CODE FROM JOHN: http://stackoverflow.com/users/467090/john
# THREAD THE TWO FUNCTIONS ARE FROM: 
def convertentity(m):
    if m.group(1)=='#':
        try:
            return unichr(int(m.group(2)))
        except ValueError:
            return '&#%s;' % m.group(2)
        try:
            return htmlentitydefs.entitydefs[m.group(2)]
        except KeyError:
            return '&%s;' % m.group(2)

def converthtml(s):
    return re.sub(r'&(#?)(.+?);',convertentity,s)
# =============

# CENTER TEXT FUNCTION
def center(itext,width):
    """
        center()
         - CENTERS TEXT WITHIN A CERTAIN SIZE FIELD
         - INPUT:  itext  - INPUT STRING
                   width  - COLUMN WIDTH
         - OUPUTS: rtnval - OUTPUT STRING
    """
    # VARIABLE DECLARATION
    rntval = ""
    
    # GET THE LENGTH OF THE INPUT TEXT
    litext = len(itext)
    
    # VALIDATE LENGTH
    if litext > width:
        # TRUNCATE INPUT STRING
        rtnval = litext[0:width-1]
    elif litext == width or litext == width-1:
        # DON'T ALTER THE TEXT
        rtnval = itext
    else:
        # WE NEED TO CENTER THE TEXT
        # GET THE DIFFERENCE BETWEEN THE WIDTH AND THE LENGTH OF THE INPUT TEXT
        dif = width - litext
        # CHECK TO SEE IF dif IS EVEN OR ODD
        tmp = divmod(dif,2)
        if tmp[1]:
            s = tmp[0]
            e = dif - s
        else:
            s = tmp[0]
            e = s
        # DO THE WORK ON THE TEXT
        rtnval = (s*" ") + itext + (e*" ")
        
    # RETURN
    return rtnval
    
# TEAM CLASS
class Team:
    """
        Team
         - CLASS TO HOLD TEAM DATA FROM THE LIVE SCOREBOARD
         - INPUT:  NONE
         - OUPUTS: NONE
    """
    def __init__(self):
        self.name  = ""
        self.score = ""

    def __repr__(self):
        return repr((self.name,self.score))

# SPORTS MATCH CLASS
class Match:
    """
        Match
         - CLASS TO HOLD THE MATCH DATA FROM THE LIVE SCOREBOARD
         - INPUT:  NONE
         - OUPUTS: NONE
    """
    def __init__(self):
        self.statustext  = ""
        self.status      = ""
        self.curperiod   = ""
        self.team1       = Team()
        self.team2       = Team()
        self.clock       = ""
        self.date        = ""
        self.sport       = ""
        
    def __repr__(self):
        return repr((self.status,self.curperiod,self.clock,self.date,self.sport,self.team1,self.team2))

class Matches:
    """
        Matches
         - CLASS TO HOLD THE LIVE SCOREBOARD DATA
         - INPUT:  NONE
         - OUPUTS: NONE
    """
    def __init__(self):
        self.data        = []
        self.fmt         = "%"+str(COLWIDTH)+"s  %"+str(COLWIDTH)+"s"
        
    def handleScoreboardData(self,scoreboard,opts):
        """
            handleScoreboardData()
             - HANDLES THE SCOREBOARD DATA
             - INPUT:  scoreboard - SCOREBOARD DATA AS A LIST
                       opts       - COMMAND LINE OPTIONS
             - OUPUTS: NONE
        """
        # LOOP THROUGH THE LIST AND PROCESS THE SPORT DICTIONARY
        for sdict in scoreboard:
            # SPORT IS IN THE LIST OF SPORTS THAT CONTAIN LEAGUES
            if sdict['sport'] in SPORTSLIST1:
                # GET OUR GAME LIST
                sdata = sdict['leagues'][0]['games']
                # LOOP THROUGH GAMES AND HANDLE THE ITEMS
                for game in sdata:
                    self.handleItem(sdict['sport'],game,opts)
            # SPORTS THAT DON'T CONTAIN LEAGUES
            elif sdict['sport'] in SPORTSLIST2:
                # NOT IMPLEMENTED
                pass
                
        
    def handleItem(self,sport,mdict,opts):
        """
            handleItem()
             - HANDLES THE PARSING OF THE MATCH DATA DICTIONARY
             - INPUT:  sport - SPORT OF THE MATCH
                       mdict - MATCH DATA AS A DICTIONARY
                       opts  - COMMAND LINE OPTIONS
             - OUPUTS: NONE
        """
        # CREATE TEMPORARY MATCH CLASS
        tmpmatch = Match()
        
        # SET THE MATCHES SPORT
        tmpmatch.sport = sport

        if opts.debug:
            print "\n** Matches.handleItem **"
            print mdict

        # EXTRACT DATA FROM THE DICTIONARY
        tmpmatch.statustext  = mdict['statusText']
        # SEE IF THERE IS A CLOCK TIME
        try:
            tmpmatch.clock   = mdict['clock']
        # IF NOT, SET TO NOTHING
        except:
            tmpmatch.clock   = ""
        # GET THE DATE
        tmpmatch.date        = mdict['date']
        # TEAM 1 DATA
        tmpmatch.team1.name  = mdict['home']['name']
        tmpmatch.team1.score = mdict['home']['score']
        # TEAM 2 DATA
        tmpmatch.team2.name  = mdict['away']['name']
        tmpmatch.team2.score = mdict['away']['score']
        
        # APPEND TEMP NEWS CLASS
        self.data.append(tmpmatch)

    def printData(self,opts):
        """
            printData()
             - HANDLES THE PRINTING OF THE CLASS DATA
             - INPUT:  mdict - MATCH DATA AS A DICTIONARY
             - OUPUTS: NONE
        """    
        # VARIABLE DECLARATIONS
        plist1  = []
        plist2  = []
        strfmt1 = ""
        
        # SORT THE LIST IF WE ARE GOING TO PRINT ALL OF THE SCOREBOARD
        # DATA AND IF THE -g OPTION IS SET
        if opts.group != "none" and opts.sport == "all":
            if opts.group == 'sport':
                self.data = sorted(self.data, key = lambda match: match.sport)
            elif opts.group == 'league':
                self.data = sorted(self.data, key = lambda match: match.compname)
                
        # CREATE THE FORMAT AND LIST OF DATA TO PRINT
        if opts.orientation == 'horizontal':
            strfmt1 = "| "
            
        for match in self.data:
    
            # DETERMINE THE FORMAT STRING
            if opts.sport == 'all' or opts.sport == match.sport.lower():
                if   opts.orientation == 'horizontal':
                    strfmt1 += self.fmt + " | "
                elif opts.orientation == 'vertical':
                    strfmt1 += 2*(self.fmt + "\n") + center("------------",COLWIDTH) + "  " + center("------------",COLWIDTH) + "\n"
    
                # APPEND INFO FOR THE TOP ROW
                plist1.append(center(match.statustext,COLWIDTH))
                
                # APPEND THE CLOCK INFO
                plist1.append(center(match.clock,COLWIDTH))
                
                # APPEND INTO FOR THE BOTTOM ROW
                if   opts.orientation == 'horizontal':
                    plist2.append(center(match.team1.name+" "+str(match.team1.score),COLWIDTH))
                    plist2.append(center(match.team2.name+" "+str(match.team2.score),COLWIDTH))
                elif opts.orientation == 'vertical':
                    plist1.append(center(match.team1.name+" "+str(match.team1.score),COLWIDTH))
                    plist1.append(center(match.team2.name+" "+str(match.team2.score),COLWIDTH))
                
        # PRINT THE DATA
        print strfmt1 % tuple(plist1)
        if opts.orientation == 'horizontal':
            print strfmt1 % tuple(plist2)

# PARSER FOR THE JSON DATA CONTAINING THE LIVE SCOREBOARD
def jsonScraper(MatchList,opts):
    """
        jsonScraper()
         - PARSES THE INFORMATION CONTAINED IN THE JSON DATA
         - INPUT:  MatchList - LIST TO STORE ALL THE MATCH CLASSES
                               - LIST POPULATED IN THIS FUNCTION
                   opts      - OPTIONS IN CASE THEY ARE NEEDED
         - OUPUTS: NONE      - MatchList IS PASS BY REFERENCE
    """
    
    # GET THE URL DATA
    urld = urllib.urlopen(URL)
    
    # READ THE JSON SHENANIGANS
    lines = urld.read()
    if opts.debug:
        print "\n** jsonScraper after reading url data **"
        #print lines
 
    # CLOSE THE WEB PAGE
    urld.close()
    
    # NEED TO DO SOME REGEX ON THE DATA BEFORE PROGRESSING
    # REMOVE AMPERSANDS - SET TO A UNIQUE VALUE THAT THE 
    # JSON WILL NEVER SEE
    lines = re.sub("&amp;","pacothetaco",lines)
    lines = re.sub("&","pacothetaco",lines)
    lines = re.sub("pacothetaco","&amp;",lines)
    # NOW CONVERT THE REST OF THE HTML SHIZZLE
    lines = converthtml(lines)
    
    # REMOVE ALL LINKS IN THE HTML DOCUMENT IN AN EFFORT
    # TO DEFUCK THE JSON DATA
    lines = re.sub("<a href=.*>*</a>","",lines)
    
    # SET UP OUR HTML PARSER FOR THE CURRENT FILE
    parser = MyHTMLParser()
    parser.feed(lines)
    lines = parser.mystr
 
    # GET THE JSQUERY HEADER PORTION OUT OF THE PICTURE
    lines = "{"+lines.split(" = {")[1]
    
    # FIX UP lines TO BE A LITERAL INTERPRETATION OF THE DATA
    # (MAKE resp A DICTIONARY OF DICTIONARYS/LISTS)
    resp = ast.literal_eval(lines)
     
    # GET THE MATCH LIST OUT OF THE resp DICTIONARY
    # NOTE THAT THIS LIST CONTAINS DICTIONARIES OF
    # THE DATA WE NEED TO PARSE INTO OUR MATCH CLASS
    # THIS IS JSON PARSING
    mlist = resp['sports']
    lmlist = len(mlist)
    
    if opts.debug:
        print "\n** jsonScraper after parsing json **"
        print lmlist
        print mlist
    
    # HAVE MATCHLIST CLASS HANDLE THE SCOREBOARD DATA
    MatchList.handleScoreboardData(mlist,opts)

def cmdLineOptionParser():
    """
        cmdLineOptionParser()
         - PARSES THE COMMAND LINE ARGUMENTS
         - INPUT:  NONE
         - OUPUTS: NONE
    """
    # CREATE OUR USAGE REPSONSE 
    usage = ("%prog [options]",__doc__)

    usage = "\n".join(usage)
    
    # CREATE OUR COMMAND LINE PARSER
    cmdparser = optparse.OptionParser(usage)
    
    # ADD OPTIONS
    cmdparser.add_option('-g', '--group', action='store', type='string',
        help='Groups the scoreboard: sport,none',
        default='sport'
    )
    
    cmdparser.add_option('-s', '--sport', action='store', type='string',
        help="Specify the sport to display: baseball,mlb,nba,ncb,ncf,ncw,nfl,nhl,rugby,soccer,tennis,wnba",
        default="all"
    )
    
    cmdparser.add_option('-l', '--show', action='store', type='string',
        help="Specify the games to display: complete,inprocess,upcoming,all",
        default="all"
    )
    
    cmdparser.add_option('-o', '--orientation', action='store', type='string',
        help="Orientation of the scoreboard: horizontal/vertical",
        default='horizontal'
    )
    
    cmdparser.add_option('-d', '--debug', action='store_true', 
        help="Enable debugging",
        default=False
    )
    
    # RETURN THE PARSER
    return cmdparser

def verifyOpts(opts):
    """
        verifyOpts()
         - FUNCTION TO VERIFY THE COMMAND LINE ARGUMENTS FOR VALIDITY
         - INPUT:  opts - COMMAND LINE OPTIONS
         - OUPUTS: rtnval - 0 IF GOOD, 1 IF VALIDITY CHECK FAILED
    """
    # VARIABLE DECLARATIONS
    rtnval1 = 0
    rtnval2 = 0
    rtnval3 = 0
    
    # CHECK SPORT
    opts.sport = opts.sport.lower()
    if opts.sport not in SPORTSLIST1 and opts.sport != 'all':
        print "*** INVALID SPORT SPECIFIED ***"
        rtnval1 = 1
    
    # CHECK ORIENTATION
    opts.orientation = opts.orientation.lower()
    if opts.orientation not in ORIENTLIST:
        print "*** INVALID ORIENTATION SPECIFIED ***"
        rtnval2 = 1
    
    # CHECK GROUPING
    opts.group = opts.group.lower()
    if opts.group not in GROUPOPTS:
        print "*** INVALID GROUPING SPECIFIED ***"
        rtnval3 = 1
    
    # RETURN TO MAIN
    return (rtnval1 or rtnval2 or rtnval3)

def Main(argv):
    """
        Main()
         - MAIN SCRIPT FUNCTION THAT WILL GET FACEBOOK FEED INFORMATION
         - INPUT:  argv - COMMAND LINE ARGUMENTS
         - OUPUTS: NONE
    """

    # SET UP OUR LIST OF FEED ITEMS
    MatchList = Matches()

    # FIGURE OUT COMMAND LINE ARGUMENTS
    cmdparser = cmdLineOptionParser()
    opts, args = cmdparser.parse_args(argv)
    
    # VERIFY THE OPTIONS
    if verifyOpts(opts):
        print "*** SCRIPT EXITING ***"
        sys.exit(1)

    # GET AND SCRAPE THE JSON
    # MatchList IS PASS BY REFERENCE
    jsonScraper(MatchList,opts)
    
    # PRINT THE DATA
    MatchList.printData(opts)

if __name__ == "__main__":
    Main(sys.argv[1:])
