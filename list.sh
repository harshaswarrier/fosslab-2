

echo $#
if [ -f $1 ]
then 
echo "file existing"
else 
echo "ERROR file not existing"
exit
fi
echo "enter username"
read username
if [ `grep -w -c $username ulist` -gt 0 ]
then
echo "duplicate alert"
else
echo $username >> ulist
echo "added name successfully"
fi

