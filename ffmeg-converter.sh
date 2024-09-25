#ffmpeg m4a to mp3 Script

#IN PROGRESS DO NOT USE

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
read -p "
What file type are you trying to convert
1.M4a 2.WAV 3.MP3
" source-file

#Select what filetype you want to convert to

read -p "
What filetype are you trying to convert to
1.M4A 2.WAV 3.MP3
" new-file


#Prompt the user for the input filename
read -p "Enter in the input filename: " input_file

#Prompt the user for the output file name
read -p "Enter in the output filename: " output_file

#Run the command
ffmpeg -i "$input_file" -acodec libmp3lame -ab 320k "$output_file"
