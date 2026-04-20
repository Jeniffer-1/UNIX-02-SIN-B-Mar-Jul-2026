  1  git remote -v
    2  git fetch upstream 
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git push push -u origin eval_p2_1_v1
    5  mv nebula/registros nebula/bitacoras
    6  mkdir -p nebula/bitacoras
    7  mkdir -p nebula/borradores
    8  rm -rf nebula/registros
    9  git add .
   10  git commit -m "Fix problema 1: estructura de directorios corregida"
   11  ls -R nebula
   12  touch nebula/bitacoras/.gitkeep
   13  touch nebula/borradores/.gitkeep
   14  git add .
   15  git commit -m "Fix problema 1: estructura de directorios corregida"
   16  mv nebula/cosmos.txt nebula/bitacoras/
   17  mv nebula/estrella.bak nebula/estrella.conf
   18  git add .
   19  git commit -m "Fix problema 2: archivos y renombrados"
   20  chmod 640 nebula/bitacoras/cosmos.txt
   21  git add .
   22  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt"
   23  ls -l nebula/bitacoras/cosmos.txt
   24  chmod u+x nebula/galaxia.sh
   25  chmod o-w nebula/estrella.conf
   26  git add . 
   27  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   28  ls -l nebula/galaxia.sh nebula/estrella.conf
   29  chmod o-w nebula/estrella.conf
   30  git add .
   31  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   32  chmod u+s nebula/galaxia.sh
   33  ls -l nebula/galaxia.sh
   34  git add .
   35  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   36  git push
   37  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   38  git remote -v
   39  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   40  git push --all
   41  git branch -a
   42  git push -u origin eval_p2_1_v1
   43  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   44  history 