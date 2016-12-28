This tool is used to run remote commands on a range of computers in your computer lab. Each box has an example (Gray Letters) of the input it accepts. Below is a short description of each box:

Start: The first computer in the range you wish to run a remote command on (Accepts values 1-99)

End: The last computer in the range you wish to run a remote command on (Accepts values 1-99)

Lab Name: This is the computer name for the desired lab (e.g. MATHLIBR)

Command: Use the drop-down menu to select an action you would like to perform on the given lab.

- ‘Restart’ - Restarts a selected range of computers.
- 'Check Logged-on’ - Check who is logged into the selected range of computers (similar to the Altiris function, but better ;))
- ‘Install SCCM Client’ – Installs SCCM client onto selected range of computers using our SCCM Server parameters.
- ‘Copy File’ (Intended for copying a file from a share-drive to the selected range of computers).
- ‘Move File’ - A practical way to move a file (e.g. shortcuts on the desktop) to another given folder (e.g. Department Applications) on the selected range of computers.
- ‘Delete File’ – Delete a file on the selected range of computers.
- ‘Cache AppV Package’ - Downloads an AppV package onto the range of computers for immediate use. (Avoids having to launch the application on each machine).
- ‘Remove AppV Package’ - Removes an AppV package from a selected range of computers.

Soure/Path and Destination: These fields are used to Copy, Move, or Delete a files on the computers in your range. Follow the syntax examples given for each selected command.
** The copy command is used mostly to copy files from a sharedrive (Bigshare/Swarchives) to the computers in your selected range. 
** Observe the absence of a drive letter in the destination box.

Name: This field is used for Caching and removing AppV applications. Input the AppV application name here (e.g. 7-Zip 9.20).

* Use the powershell command prompt window for use with the "Check Logged-On" command as well as error troubleshooting.
