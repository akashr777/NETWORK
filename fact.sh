#set -vx
if [ $# -ne 1 ]
then 
echo "Syntax is <$0> <number>"
exit 1
fi 
# function to find factorial
fact()
{
n=$1
i=1
f=1
while [ $i -le $n ]
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
#echo "$n != $f"
return $f
}
fact $1
echo "$1! = $?"
