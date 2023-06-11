# go to powershell open as administrator
   Step1: 
       wsl --update
    Step2: open your wsl ubuntu or centOs
           apt update -y or yum
    Step3: add below lines to /etc/wsl.conf
        Add the following:
            [boot]
            systemd=true
        Exit Ubuntu and again:

    in powershell
        wsl --shutdown
    Then restart Ubuntu.

        sudo systemctl status