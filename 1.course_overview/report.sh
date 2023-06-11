#!/bin/bash
DOCKER_VER=$(docker -v | cut -d " " -f 3 | tr "," " " )
NGINX_VER=$(nginx -v 2>&1| cut -d ":" -f 2 |cut -d "/" -f 2)
OSUNAME=$(uname)

cat <<EOF  | /usr/bin/mail -s "$(date): Report on nemo from  ATOM user $(hostname)" "vignan.kandela@gmail.com"
Docker_Version: $DOCKER_VER
Nginx_Version: $NGINX_VER
Uname: $OSUNAME
EOF

# for schedule the execution of script for every friday
# use cron job
# crontab -e
# e_min e_hr e_dom e_mom e_wd cmd
# * * 11 6 * /mnt/d/vignan/script/bash_script/Narendra_p/1.course_overview/report.sh #atements
