uname -a
which gpg 
gpg --version
gpg --full-generate-key #generar llave
gpg --list-keys
gpg --armor --export condorjeniffer0@gmail.com > mi_llave_publica.asc
ls mi_llave_publica.asc
gpg --armor --export 
gpg --list-secret-keys --keyid-format=long #para listar las llaves privadas hash 
#C970546ABAFA2BE1 
gpg --armor --export-secret-keys #para especifivar el hash de las llaves
gpg --import SammyMicompa.asc #importar o compartir llaves 
gpg --list-keys #listar llaves compartidas
echo "este mensaje es secreto" > doc_no_cifrado.txt
ls #listar archivos o mombres
cat doc_no_cifrado.txt 
gpg --output doc_cifrado.txt --encrypt --recipient chamorrosamy525@gmail.com doc_no_cifrado.txt #usamos el hash o correo para cifrar el documento
gpg --out doc_no_cifrado_firmado.txt --clearsing doc_no_cifrado.txt 
ls
cat doc_no_cifrado_firmado.txt
#comandos que me ayudo chatgpt para solucionar el problema que tenia
echo "pinentry-mode loopback" >> ~/.gnupg/gpg.conf #este comando me dio chatgpt para 
#configurar gpg 
nano ~/.gnupg/gpg-agent.conf #es para entar o crear un archivo
pinentry-program /usr/bin/pinentry-curses # este comando le dice a GPG qué programa usar para pedirte la contraseña (passphrase).
gpgconf --kill gpg-agent #para reiniciar 
export GPG_TTY=$(tty) #sirve para decirle a GPG en qué terminal (TTY) debe pedirte la contraseña
gpg --decrypt sammy_doc_cifrado.txt #para cifrar el doc de mi compa
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
ls
cat doc_no_cifrado_firmado.txt