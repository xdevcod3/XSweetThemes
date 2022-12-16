require_relative "./ruby/message.rb"
include Message

# #SETUP YOUR KALI GNOME THEME


    #UPDATE 
    message_up "RUN APT UPDATE .."
    system("sudo apt update")
    clearn()

    #TRY
    message "In the popup that will appear choose FDM3",1

    #INSTALL GNOME(desktop environment)
    message "RUN APT INSTALL kali-desktop-gnome", 2
    system("sudo apt-get install kali-desktop-gnome")
    message_up "Gnome DESKTOP ENVIROMENT IS DONE:)"
    clearn()
    message "the system will logout , you need to run script 2 after login", 1
    sleep(4)
    message "make sure next time you login you can choose “GNOME”
     in the session selector in the top right hand corner of the login screen.",2
    sleep(4)
    message "SYSTEM REBOOT..."
    sleep(4)
    print("Your user name is : ")
    a = system("users")
    message "Confirm your user name", 1
    user = gets.chomp
    system("sudo pkill -KILL -u #{user}")

##end


