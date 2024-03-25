#script to check if the given sides can be the sides of a trianle 
if [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "enter first number"
read a
echo "enter second number"
read b
echo "enter third number"
read c
fi
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
echo "$a $b $c cannot be the sides of triangle"
else
echo "$a $b $c can be the sides of triangle"
   if [ $a -eq $b -a $b -eq $c ]
   then 
   echo "Triangle is equilateral"
   elif [ $a -eq $b -o $b -eq $c -o $a -o $c ]
   then
   echo "Triangle is isosceles"
   else
   echo "Triangle is scalene"
   fi
fi
