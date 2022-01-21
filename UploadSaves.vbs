'!!!!THIS SCRIPT USES KEYBOARD INPUTS!!!!
'This script opens your GitHub repository in your default browser and then opens the path that the files are stored in. Once in the path of the files, it will use the keyboard to select all files in the folder, making it easy to drag them all into the upload page and commit. If you are not comfortable with the script typing and wish to do so manually, comment out line 11 and 12 by putting a single quote before the code in the lines.
'For this script to work, replace the following lines with applicable information.
'Line 7 to the direct link to your (hopefully private) github repository's upload page. If you don't know how to get to the upload page, it will look something like "https://github.com/[YOUR USERNAME]/[THE NAME OF YOUR REPO]/upload/main".
'Line 9 to the path to your files. If you're using this to upload save files, it will be the path that the game reads save files from.
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.run "[REPLACE THIS LINK, SEE LINE 4]"
WScript.Sleep 2000
strPath = "[REPLACE THIS PATH, SEE LINE 5]"
WshShell.Run strPath
WScript.Sleep 1000
WshShell.SendKeys("^a")
