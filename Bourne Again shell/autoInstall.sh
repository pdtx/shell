!#/bin/bash
 

############################
####	description
####
############################

source_home=${1}
dir=${2}

readonly source_home
readonly dir

echo "1：java installment"

#rpm -e --nodeps tzdata-java-2017b-1.el7.noarch
#rpm -e --nodeps java-1.8.0-openjdk-headless-1.8.0.131-11.b12.el7.x86_64
#rpm -e --nodeps java-1.8.0-openjdk-1.8.0.131-11.b12.el7.x86_64

for earse in `rpm -qa | grep java`
do
	rpm -e --nodeps ${earse}
done 

rpm -ivh ${source_home}/rpm/java.rpm

java -version

echo "java installment done"
echo "----------------------------"

echo "2：mysql"




#
#	
#

