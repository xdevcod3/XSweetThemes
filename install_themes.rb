require_relative "./ruby/message.rb"
require_relative "./ruby/unzip.rb"
include Message

# Insatll your kali gnome themes and icons

# #INSTALL  gnome-tweak
message_up "Install gnome-tweak-tools"
system "sudo apt install gnome-tweaks"

#--------
clearn()
#---------

#SERACH
message "Install Extension Manager"
system("sudo apt search extension-manager") ?  
    system("sudo apt install gnome-shell-extension-manager") : 
        raise("")

#--------
clearn(2)
#---------

#DOWNLOADS THEMES AND ICONS (ETC)
#************************

puts ("download all files")
sleep(5)

#--------
clearn()
#---------

#UNZIP ALL FILES
unzip_all("unzip all download files")

#--------
clearn()
#---------

#MOVE ALL FILES

message_up "Check if it has the directory, if not we create it"
DThemes = "~/.theme"
system(" [ -d #{DThemes} ] ") ? 
    puts("You already have the directory") : 
        system("mkdir #{DThemes}") && message("The directory has been created successfully")

message_up "move all themes to #{DThemes}"
sleep(2)
system("mv -v ./unzip/Sweet-Dark ./unzip/Sweet-Dark-v40 #{DThemes}") ?
    message_up("mv with succ") :
        system("rm -rf #{DThemes}/Sweet-Dark #{DThemes}/") &&
            system("mv -v ./unzip/Sweet-Dark ./unzip/Sweet-Dark #{DThemes}")

#--------
clearn(2)
#---------

message_up "Check if it has the directory .icons , if not we create it"
DIcones = "~/.icon"
system(" [ -d #{DIcones} ] ") ? 
    puts("You already have the directory") : 
        system("mkdir #{DIcones}") && message("The directory has been created successfully")

message_up "move all themes to #{DIcones}"
sleep(2)
system("mv -v ./unzip/candy-icons ./unzip/Sweet-Rainbow #{DIcones}")? 
    message_up("mv with succ") :
         system("rm -rf #{DIcones}/candy-icons #{DIcones}/Sweet-Rainbow") &&
            system("mv -v ./unzip/candy-icons ./unzip/Sweet-Rainbow #{DIcones}")

# #--------
# clearn()
# #---------