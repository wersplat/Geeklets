StartService ()
{
    ConsoleMessage "Starting Sleep Watcher"
    /usr/local/sbin/sleepwatcher -d -V -s /etc/rc.sleep -w /etc/rc.wakeup
      -t 12000 -i "/usr/local/sbin/sleepwatcher -n"
    /etc/rc.wakeup
    return 0
}