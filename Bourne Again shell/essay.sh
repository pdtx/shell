### 统计某个目录下所有java 代码的行数
#!/bin/bash

dir=${1}

find $dir -name "*.java" > ${dir}/javadir

sum=0

for file in `cat ${dir}/javadir`
do
        num=`awk 'END{print NR}' $file`
        sum=$(expr $sum + $num )
done
echo $sum
rm -f ${dir}/javadir




###