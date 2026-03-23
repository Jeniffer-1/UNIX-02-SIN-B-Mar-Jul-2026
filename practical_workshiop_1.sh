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
