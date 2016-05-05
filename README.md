# xfce_restore-deleted-files
Restore deleted files - Xfce

After deletion, Xfce moves the file inside this folder:
	/home/$USER/.local/share/Trash/files/$filename

Informations about date/time deletion and the path where the file was deleted from are stored inside a folder
	/home/$USER/.local/share/Trash/info/$filename.trashinfo

Note the '.trashinfo' string is appended to this file.

I created a shell script which extract the newest file inside the Trash/files, then extract the path folder from its trashinfo file, and moves it to its previous destination.

I'm more than sure that the shell commands can be improved a lot.

# Tips
If you want to execute this script using a keyboard shortcut, avoid keys like "CTRL-Z", because xfce would listen this command even if you are using for example a text editor.
You can use "CTRL-ALT-Z" as a replacement.

# To do:
Check the current window focus before restoring files, allowing to use CTRL-Z like most Desktop Environment do.

# Xfce forum refer:
https://forum.xfce.org/viewtopic.php?pid=40046
