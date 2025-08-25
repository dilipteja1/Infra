Every lab machine has a dedicated drive attached to it and each lab machine are used for different experiments. 

the data corresponding to the experiments, be it CSV files, images, folders etc  are typically stored in the dedicated drive in the machine. 

> The lab has standardized the storage drive to be ://D drive across all the machines

The Data drive is automatically backed up to the NAS periodically. The Advantages of doing so are following. 

1. The data is duplicated and preserved. Even at the cost of failure in the machine, the data is intact and can be retrieved from NAS
2. Single stop to review the data. Revelant stakeholder may not know the information or access to the machine where the experiments are run. In this case, Having access to NAS can help in accessing data of all experiments at one place, boosting the evaluation times significantly.

## Manual Steps to Backup
1. clone the [Repo](https://github.com/dilipteja1/infra) or Download the script **windows_backup.bat** from the repo into the machine we want to backup
1. Open the directory where the script is downloaded
1. Or right-click → **Run as administrator** (recommended, since Robocopy may need elevated permissions).

## Validation

We should see the script window open and Robocopy start copying files
Check the NAS -- if the files inside the directory named after computer name are updated/added
Check the log -- a new folder named C:\backup_logs\ are created



