Steps:
 step1: Get Gmail Id and Password
  then
 Step: google account ---> manage your google account---> security 
         2 step verification on
 Step: again   manage your google account---> security
         app passwords  
  nlrnyloxygylqkzw
 Step: get app passwd gmail (vignan.kandel@gmail.com ) APP passwd (nlrnyloxygylqkzw) 
 Step2: login into ubuntu and switch to root using: sudo su -
 Step3:  Run below commands:
	    apt-get update -y
        apt-get install sendmail mailutils -y
 Step4: Create authentication file
        cd /etc/mail
	mkdir -m 700 authinfo
	cd authinfo/
	vi gmail
        add the below conntent 

	AuthInfo: "U:root" "I:your-mail@gmail.com" "P:your-password"

        Now edit your mail id and password

Step5: create hash map of the file:
	makemap hash gmail < gmail
Step6: Got to /etc/mail and open sendmail.mc
       then Add the following lines to sendmail.mc file right above MAILER_DEFINITIONS:
	#GMail settings:
	define(`SMART_HOST',`[smtp.gmail.com]')dnl
	define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl
	define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl
	define(`confAUTH_OPTIONS', `A p')dnl
	TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
	define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
	FEATURE(`authinfo',`hash -o /etc/mail/authinfo/gmail.db')dnl


Step7: Now run below two command from /etc/mail
	make
	/etc/init.d/sendmail reload
Step8: Now open https://www.google.com/settings/security/lesssecureapps
       and Allow less secure apps: ON
Step9: Verify the test mail using
	echo "automation Demo" | mail -s "Status of Httpd" vignan.kandela@gmail.com
 
echo "Demo" | mail -s "Status of Httpd" dowithscripting@gmail.com -A demo.txt