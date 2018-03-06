<h1> Introduction </h1>
INTUZ is presenting Automated Scripts for AWS EBS Snapshot and Patch update Management. These scripts will help you for creating snapshot, backup, update & Patch upgrade by setting scheduling cron jobs. Please follow the below steps to run the script.

 <h1>Features</h1>

-  Cron Job for AWS EBS Automatic backup.

-  Set the retention period for the AWS Snapshots and update.

-  Cron for automatic Update and Upgrade AWS AMIs and dependencies.

<h1> Description </h1>

<h3> Snapshot Script (snapshotscript.sh) </h3>

 This bash script is used for Automatic EBS Snapshots and Cleanup on Amazon Web Services (AWS).It determines the instance ID of the EC2 server on which the script runs. Also, it will take snapshots for each attached volume. With the help of this script, backup and retention period are set.

<h3> Retention period Script(rp.sh)</h3>

This script is used for AWS Snapshot Management. We have created it to let you set the retention period for the snapshots. This script will create a cron for automatic backup at 2:00 AM UTC. Snapshot script and backup script are linked to this script. You can enable it by logging into the terminal or shell with the Instance login method and then run this script.

<h3> Backscript (backupscript.sh)</h3>
  
This script is used for AWS EBS backup management of Snapshot. We have created it to let you set cron and schedule automated backup. It is used with retention script.


<h3> Update Script (update.sh)</h3>

This script is used for Update Management of AWS AMIs. We have created it to let you update and upgrade the AMI, it will create a cron for automatic Update and Upgrade at 1:00 AM UTC.

<h1> Requirements</h1>

- These scripts requires AWS IAM user credentials to be created with proper IAM security policy.

<h1> Getting Started</h1>

-   To run these scripts, you require the AWS CLI tools to be installed.


-  First you have to install  Python pip:

    -  Install Python pip

    ```sh
     sudo apt-get install python-pip -y
    ```

-  Then install the AWS CLI tools:

  - Install AWS CLI tools

    ```sh
   sudo pip install awscli
   ``` 
 - Once the AWS CLI tools has been installed, you'll need to configure it with the credentials of the IAM user which you have created.
 
     - To configre aws  
   
     ```sh
     sudo aws configure
     ```
     
<h1> How to install and excute the scripts</h1>

- Install and run the snapshot scripts

   - Make a folder to save the scripts

    ```sh
   sudo mkdir iscripts
   ``` 
  ```sh
    cd ~
    wget  https://github.com/Intuz-production/Utilities-to-Manage-AWS-Snapshots/blob/master/snapshotscript.sh
    wget  https://github.com/Intuz-production/Utilities-to-Manage-AWS-Snapshots/blob/master/rp.sh
    wget  https://github.com/Intuz-production/Utilities-to-Manage-AWS-Snapshots/blob/master/backup.sh
     ```
- To make the Scripts excuteable run the following command

    ```
    sudo chmod +x snapshotscript.sh (script-name)
    ```
-  To run the script 

     *  As this script is linked with snapshotscript and backup script which will create snapshot and set up a cron job in order to schedule a backup.

    ```sh
     cd ~
     sudo bash rp.sh
   ```

- Install and run the Update script 

     ```sh
     wget https://github.com/Intuz-production/Utilities-to-Manage-AWS-Snapshots/blob/master/update.sh
     sudo chmod +x update.sh
     sudo bash update.sh
     ```
     
 <h1>Bugs and Feedback</h1>
For bugs, questions and discussions please use the Github Issues.

<br/><br/>
<h1>License</h1>
The MIT License (MIT)
<br/><br/>
Copyright (c) 2018 INTUZ
<br/><br/>
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: 
<br/><br/>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


<br/>
<h1></h1>
<a href="https://www.intuz.com/" target="_blank"><img src="Screenshots/logo.jpg"></a>



     