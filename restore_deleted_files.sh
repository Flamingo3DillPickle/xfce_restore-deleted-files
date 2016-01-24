#Add a shortcut from Xfce menu
cd /home/$USER/.local/share/Trash/files/

last_file=$(command ls -Art | tail -n 1)
trash_info=$(echo $last_file | sed -e 's/\(^.*\)/\1.trashinfo/')

move_to=$(cat ../info/$trash_info | tail -n 2 | head -n 1 | awk -F"=" '{print $2}')

#Debug info
#echo "$last_file" "$trash_info" "$move_to"

mv "$last_file" "$move_to"
rm "../info/$trash_info"
