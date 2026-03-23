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