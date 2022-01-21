'!!!!THIS SCRIPT USES KEYBOARD INPUTS!!!!
'This script opens the download page of your (hopefully private) GitHub repo, opens the path of a temporary folder, and downloads the content of the repository via a .zip. It sends keyboard inputs, so if you are not comfortable with that or wish to complete these steps yourself, you can comment out lines 10, 11, 12, 13, and 14 by adding ' to the start of those lines. 
'You must change the following 2 lines for this script to work successfully.
'Line 9 to the download page of your GitHub repository. If you're unsure what this link is, it will most likely be "https://github.com/[USERNAME]/[REPOSITORY]/archive/refs/heads/main.zip"
'line 12 (if applicable) to the path of your temporary folder. This can be anything, but you will need to keep note of this folder if you intend on using ExtractSave.vbs


Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.run [REPLACE THIS LINK, SEE LINE 4]"
WScript.Sleep 3000
WshShell.SendKeys("^l")
WshShell.SendKeys "[REPLACE THIS PATH, SEE LINE 5]"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "{ENTER}"