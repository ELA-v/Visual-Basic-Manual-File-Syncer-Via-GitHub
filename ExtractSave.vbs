'This script is a part 2 to DownloadSave.vbs. Only use it after DownloadSave.vbs has been run.
'This solution uses a seperate folder to store the zipped file and folder before the saved files are put into the actual save directory. Keep in mind that when the file is extracted, the directory will retain the name of the .zip file it was extracted from. You'll need to change the following lines to target your files: 
'Line 13 and 28 to the path of your zipped file that was downloaded by DownloadSave.vbs. For example: "C:\Users\[USERNAME]\[PATH]\[NAME OF ZIPPED FILE].zip". I know that these could both be put in the same variable, but I copied the majority of this script from online forums and did not bother to optimize it.
'Line 14, 29, and 30 to where you'd like the folder to be stored, complete with the "\" at the end. For the sake of convenience, it's suggested that you store it in the same path that the zip folder was stored, but it makes no difference since both the zip file and extracted folder will be deleted by the end of this program. 
'Line 29 to the final destination for all of these files, complete with the "\" at the end. If you're using this for save files, this variable should be set to the folder that the game reads saves from.
 
 
 
 



ZipFile="[REPLACE THIS PATH, SEE LINE 3]"
ExtractTo="[REPLACE THIS PATH, SEE LINE 4]"

Set fso = CreateObject("Scripting.FileSystemObject")
sourceFile = fso.GetAbsolutePathName(ZipFile)
destFolder = fso.GetAbsolutePathName(ExtractTo)
 
Set objShell = CreateObject("Shell.Application")
Set FilesInZip=objShell.NameSpace(sourceFile).Items()
objShell.NameSpace(destFolder).copyHere FilesInZip, 16
Set objShell = Nothing
Set FilesInZip = Nothing

Set fso = CreateObject("Scripting.FileSystemObject")

fso.DeleteFile ("[REPLACE THIS PATH, SEE LINE 3]")
fso.CopyFile "[REPLACE THIS PATH, SEE LINE 4]*.*", "[REPLACE THIS PATH, SEE LINE 5]",true
fso.DeleteFile ("[REPLACE THIS PATH, SEE LINE 4]*")