#!/bin/bash

#ffmpeg m4a to mp3 Script

Echo "
   ___                 _    _ _ _             
  / _ \__   _____ _ __| | _(_) | |            
 | | | \ \ / / _ \ '__| |/ / | | |            
 | |_| |\ V /  __/ |  |   <| | | |            
  \___/  \_/ \___|_|  |_|\_\_|_|_|            
  / ___|___  _ ____   _____ _ __| |_ ___ _ __ 
 | |   / _ \| '_ \ \ / / _ \ '__| __/ _ \ '__|
 | |__| (_) | | | \ V /  __/ |  | ||  __/ |   
  \____\___/|_| |_|\_/ \___|_|   \__\___|_|   

"

#Select what filetype you want to convert"
echo "What file type are you trying to convert?"
echo "1. M4A"
echo "2. WAV"
read -p "Enter m4a or wav (no caps): " source_file

#Prompt the user for the input filename
read -p "Enter in the input filename: " input_file

#Prompt the user for the output file name
read -p "Enter in the output filename: " output_file

#M4a
if [ "$source_file" = "m4a" ]; then
	Echo "

   ____                          _   _                   
  / ___|___  _ ____   _____ _ __| |_(_)_ __   __ _       
 | |   / _ \|  _ \ \ / / _ \  __| __| |  _ \ / _  |      
 | |__| (_) | | | \ V /  __/ |  | |_| | | | | (_| |_ _ _ 
  \____\___/|_| |_|\_/ \___|_|   \__|_|_| |_|\__, (_|_|_)
                                             |___/       
"
	ffmpeg -i "$input_file".m4a -acodec libmp3lame -ab 320k "$output_file".mp3

elif [ "$source_file" = "wav" ]; then
	Echo "

   ____                          _   _                   
  / ___|___  _ ____   _____ _ __| |_(_)_ __   __ _       
 | |   / _ \|  _ \ \ / / _ \  __| __| |  _ \ / _  |      
 | |__| (_) | | | \ V /  __/ |  | |_| | | | | (_| |_ _ _ 
  \____\___/|_| |_|\_/ \___|_|   \__|_|_| |_|\__, (_|_|_)
                                             |___/       

"
	ffmpeg -i "$input_file".wav -vn -ar 44100 -ac 2 -b:a 192k "$output_file".mp3

else
	echo "Invalid Option. Please enter m4a or wav"
fi
