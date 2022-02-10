#!/bin/bash
echo $0
echo "HelloUser"
echo "See the files in current directory"
ls
myname=Na" "wme
echo My Name $myname
text=1+2
echo $text
echo '$text'
echo -n "Enter your name:"
#read name
echo "Your Name:$name"
expr 1000000000-1
x=`expr 100000 + 100000`
echo $x
echo `expr 10000000000 + 10000000000`
read num1 num2
if [ $num1 -gt $num2 ]; then
echo num1
elif [ $num1 -eq $num2 ]; then
echo equal
else
echo num2
fi
if [ !`expr $num1 % 2` -eq `0` ]; then
echo false
else
echo true
fi
echo "Is it morning? Please answer yes or no"
read timeofday
case $timeofday in
yes) echo "Good Morning";;
no ) echo "Good Afternoon";;
y ) echo "Good Morning";;
n ) echo "Good Afternoon";;
* ) echo "Sorry, answer not recognized";;
esac
echo $*
echo $#
echo $5
for i in $*
do
echo $i
done
for i in `ls`
do
echo $i
done
password="abc"
echo "Enter password"
read pass
while [ $pass != $password ]
do
echo "Wrong Password,Try again"
read pass
done
echo "Write Password"
s=
if [ -n $s ] ; then
echo not null
else
echo null
fi

#!/bin/bash
pwd
echo "Hello"
ls
a=10
echo $a
myname=A
echo Your Name: $myname
#read var1 var2
var=`expr 1 + 1`
echo $var
expr 1 - 1
expr 3 \* 4
expr 100 / 25
a=10 
b=20
if [ $a -gt $b ] ; then
    echo a:$a
else 
    echo b:$b
fi
var=-1
case $var in
-gt 0 ) echo pos;;
-lt 0 ) echo neg;;
* ) echo zero;;
esac
read num
if [ `expr $num % 3` -eq 0 -o `expr $num % 5` -eq 0 ] ; then
    echo 'YES'
else 
    echo 'NO'
fi
echo `expr $1 + $3`
echo $#
echo $*
for((i=2;i<=100;i=i+2))
do 
echo $i
done
