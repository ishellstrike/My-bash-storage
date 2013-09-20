#! bin/bash
##sunjdkinstall.sh

echo "Deleting openjdk"
sudo apt-get purge openjdk*
echo "Instaling sunjdk"
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java6-installer
echo "Sun JDK installed"
