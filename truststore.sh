mydir=.
truststore=jksfilename.jks
storepassword=password
echo | openssl s_client -connect database-1.c9eku6iso4c2.us-east-2.rds.amazonaws.com:3306 > certname.pem
keytool -import -v -keystore ${truststore} -noprompt -storepass ${storepassword} -alias alias-name certname.pem