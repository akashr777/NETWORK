#extracting a set of line from set of files

if [ $# -le 2 ]
then
echo "Syntax is <$0> <range> <files....>"
exit 1
fi
n1=$1
n2=$2
shift
shift
if [ $n1 -gt $n2 ]
then
t=$n1
n1=$n2
n2=$t
fi
n3=`expr $n2 - $n1 + 1`
while [ $# -ne 0 ]
do
echo "\nFile : $1\n"
head -$n2 $1 | tail -$n3
shift
done
exit 0
