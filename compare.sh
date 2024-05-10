#to delete duplicate file

clear
if [ $# -ne 2 ]
then
echo "Syntax is <$0> <file1> <file2>"
elif [ -f $1 -a -f $2 ]
then
cmp $1 $2 >/dev/null
if [ $? -eq 0 ]
then
echo "Files are same..."
rm -f $1
echo "$1 deleted"
else
echo "File $1 and $2 are not same"
fi
else
echo "Files are not ordinary files"
fi
