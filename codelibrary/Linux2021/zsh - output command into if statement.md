

testing a command into an if statement
```bash
if netstat -lntp | grep ':8080.*java' > /dev/null; then
    echo "Found a Tomcat!"
fi
```


https://stackoverflow.com/questions/15367674/bash-one-liner-to-exit-with-the-opposite-status-of-a-grep-command


https://stackoverflow.com/questions/26675681/how-to-check-the-exit-status-using-an-if-statement