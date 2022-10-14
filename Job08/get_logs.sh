datenow= date +%d-%m-%Y-%R

last | wc -l > "/home/netosss/Documents/Shell.exe/Job08/number_connection-$(date +%d-%m-%Y-%R).txt"
tar -cvf "/home/netosss/Documents/Shell.exe/Job08/Backup/number_connection-$(date +%d-%m-%Y-%R).tar" /home/netosss/Documents/Shell.exe/Job08/number_connection-$(date +%d-%m-%Y-%R).txt
rm /home/netosss/Documents/Shell.exe/Job08/number_connection-$(date +%d-%m-%Y-%R).txt
