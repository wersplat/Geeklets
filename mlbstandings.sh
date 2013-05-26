#!/bin/bash -f
awk '
BEGIN 	{
		FS=","
		fmtheader = "%13s\t %3s\t %3s\t %4s\t %3s\n"
		fmtdata = "%13s\t %3d\t %3d\t %4s\t%3s\n"
		printf(fmtheader, "Team", "W", "L", "PCT", "GB ");
		} \
		{ 
		printf(fmtdata, $1, $2, $3, $4, $5);
		}	\
END 	{}		
'