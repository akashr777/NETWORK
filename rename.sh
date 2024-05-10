#Rename all ordinary files with pid of shell

if [ $# -gt 1 ]
then
echo "Syntax is <$0> <location>"
exit 2
fi
if [ $# -ne 0 ]
then
cd $1
fi
for i in *
do
if [ -f $i ]
then
mv $i $i.$$
fi
done
echo "Filename changed to filename.$$"
