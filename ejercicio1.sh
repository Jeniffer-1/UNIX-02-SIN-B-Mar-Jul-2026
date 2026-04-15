echo '#!/bin/sh' > hola.sh #Create the file hola.sh 
#and write the first line of the scrip
echo 'echo "hola desde mi primer script"' >> hola.sh #Append a line to the file that prints a message.
cat hola.sh #Display the content of the script.
./hola.sh #Run the script.

ls -l hola.sh 
chmod +x hola.sh
ls -l hola.sh
./hola.sh