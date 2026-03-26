uname -a
which gpg 
gpg --version #Displays the installed GPG version
gpg --full-generate-key #Generates public and private keys
gpg --list-keys #Show the keys you have in your system
gpg --armor --export condorjeniffer0@gmail.com > mi_llave_publica.asc #Share your password with other people
ls mi_llave_publica.asc #Verify that the file exists
gpg --armor --export condorjeniffer0@gmail.com #Sirve para exportar claves públicas
gpg --list-secret-keys --keyid-format=long #to list the hash private keys 
#C970546ABAFA2BE1 
gpg --armor --export-secret-keys #to specify the hash of the keys
gpg --import SammyMicompa.asc #import or share keys
gpg --list-keys #list shared keys
echo "este mensaje es secreto" > doc_no_cifrado.txt #It is used to create a text file from the terminal
ls #list files or names
cat doc_no_cifrado.txt #Muestra el contenido del archivo
gpg --output doc_cifrado.txt --encrypt --recipient chamorrosamy525@gmail.com doc_no_cifrado.txt #It is used to encrypt the file. It uses the recipient's public key.
#Commands that chatgpt helped me to solve the problem I had
echo "pinentry-mode loopback" >> ~/.gnupg/gpg.conf #This command gave me chatgpt to
#configure gpg
nano ~/.gnupg/gpg-agent.conf # is for entering or creating a file
pinentry-program /usr/bin/pinentry-curses # This command tells GPG which program to use to prompt you for your password (passphrase).
gpgconf --kill gpg-agent #to restart 
export GPG_TTY=$(tty) #This tells GPG which terminal (TTY) to ask for your password on
gpg --decrypt sammy_doc_cifrado.txt #to encrypt my friend's doc
gpg --out doc_no_cifrado_firmado.txt --clearsing doc_no_cifrado.txt #It is used to digitally sign the file
ls #list files or names
cat doc_no_cifrado_firmado.txt #It is used to view the contents of the file.
gpg --verify SammyMicompa_doc_no_cifrado_firmado.txt #It is used to verify a digital signature.
gpg --edit-key chamorrosamy525gmail.com #It is used to edit and manage a GPG key.
trust #It is used within gpg --edit-key to assign a trust level to a key.