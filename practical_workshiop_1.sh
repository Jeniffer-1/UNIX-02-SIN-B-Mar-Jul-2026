uname -a
which gpg 
gpg --version
gpg --full-generate-key #generar llave
gpg --list-keys
gpg --armor --export 
ls mi_llave_publica.asc
gpg --armor --export 
gpg --list-secret-keys --keyid-format=long #para listar las llaves privadas hash 
#075C55ED21B1BD98
gpg --armor --export-secret-keys #texto, no en binario 
