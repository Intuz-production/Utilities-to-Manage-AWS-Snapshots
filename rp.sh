//  The MIT License (MIT)

//  Copyright (c) 2018 Intuz Solutions Pvt Ltd.

//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files
//  (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify,
//  merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#!/bin/bash
clear
echo "Press ctrl+c to exit!!!"
echo "Welcome to Snapshot Management Console"
echo Fetching current retention period......
a="$(sed -n 36p /path-to-snapshotscript/snapshotscript.sh >> a.txt)";
awk -F '"' '$0=$2' a.txt >> b.txt
b="$(cat b.txt)";
echo "Current retention period is $b days"
read -p  "Please enter your new retention period in days : " rpd
echo "The New retention period will be $rpd days"
sed -i "36s|$b|$rpd|" /path-to-snapshotscript/snapshotscript.sh
rm a.txt
rm b.txt
c="$(find . -type f -name sed\* -exec rm {} \;)"
echo "Creating snapshot...."
bash /path-to-snapshotscript/snapshotscript.sh
echo "Creating cron for daily backup at 2:00 AM UTC"
echo "You can always edit the cron by typing sudo crontab -e"
bash /path-to-snapshotscript/backup.sh
echo "We have setup retention period, current snapshot creation and daily cron for you"
