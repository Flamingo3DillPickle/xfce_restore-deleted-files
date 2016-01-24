# xfce_restore-deleted-files
Restore deleted files - Xfce

After deletion, Xfce moves the file inside this folder:
	/home/$USER/.local/share/Trash/files/$filename

Informations about date/time deletion and the path where teh file was deleted from are stored inside a folder
	/home/$USER/.local/share/Trash/info/$filename.trashinfo

Note the '.trashinfo' string is appended to this file.

I created a shell script which extract the newest file inside the Trash/files, it then extract the path folder from its trashinfo file, and moves it to its previous destintion.

I'm more than sure that the shell commands can be improved a lot.
