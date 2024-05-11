
###########SHELL SCRIPT FOR INSTALLING MAVEN ON LINUX##############
set -e
mvn_version=${mvn_version:-3.9.4}
url="https://dlcdn.apache.org/maven/maven-3/${mvn_version}/binaries/apache-maven-${mvn_version}-bin.tar.gz"
mkdir -p /opt/maven
install_dir="/opt/maven"
curl -fsSL ${url} | tar zx --strip-components=1 -C ${install_dir}
cat << EOF > /etc/profile.d/maven.sh
#!/bin/sh
export MAVEN_HOME=${install_dir}
export M2_HOME=${install_dir}
export M2=${install_dir}/bin
export PATH=${install_dir}/bin:$PATH
EOF
source /etc/profile.d/maven.sh

##############CREATING TRUSTSTORE CERTS##############