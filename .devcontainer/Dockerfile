# ============================================================================
#  Dockerfile — "receta" para construir la imagen del curso
# ============================================================================
#  Un Dockerfile es un archivo de texto con instrucciones paso a paso que
#  Docker (o Codespaces) lee de arriba hacia abajo para fabricar una
#  "imagen". Una imagen es como un molde congelado de un sistema Linux
#  listo para usar; cada vez que abres el Codespace, se crea un
#  "contenedor" a partir de ese molde.
#
#  Analogía: la imagen es el PLANO, el contenedor es la CASA construida
#  con ese plano. Puedes construir muchas casas iguales a partir de un
#  solo plano, y si destruyes una casa el plano sigue intacto.
#
#  Cada instrucción (FROM, ENV, RUN...) crea una "capa". Docker guarda
#  esas capas en caché: si no cambias las primeras líneas, no las
#  reconstruye y el siguiente build es casi instantáneo.
# ============================================================================


# ----------------------------------------------------------------------------
# FROM: imagen base sobre la que vamos a construir
# ----------------------------------------------------------------------------
# En lugar de partir de cero, partimos de la imagen oficial de Kali Linux
# en su versión "rolling" (actualización continua, siempre al día).
# Todo lo que instalemos más abajo se apila ENCIMA de esta base.
FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# ENV: variables de entorno permanentes dentro del contenedor
# ----------------------------------------------------------------------------
# Las variables de entorno son "ajustes globales" que cualquier programa
# del sistema puede leer. Se escriben en MAYÚSCULAS por convención.
#
#   DEBIAN_FRONTEND=noninteractive
#     Le dice al instalador de paquetes (apt) "no me hagas preguntas
#     interactivas, asume respuestas por defecto". Sin esto, algunos
#     paquetes pausarían el build esperando que pulsemos una tecla y se
#     quedaría colgado para siempre (porque no hay nadie mirando).
#
#   LANG / LC_ALL=es_ES.UTF-8
#     Configuran idioma y codificación de caracteres. UTF-8 es lo que
#     permite que acentos, ñ, €, emojis, etc. se muestren bien.
#
#   TERM=xterm-256color
#     Le indica a los programas que la terminal admite 256 colores, para
#     que vim, nvim, htop, etc. se vean con todos sus colores.
#
# La barra invertida "\" al final de cada línea significa "esto continúa
# en la línea siguiente". Solo es para legibilidad.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# ----------------------------------------------------------------------------
# Pre-respuesta a una pregunta interactiva de Wireshark
# ----------------------------------------------------------------------------
# Wireshark/tshark PREGUNTA durante su instalación si los usuarios
# normales (no-root) deben poder capturar paquetes. Como en el contenedor
# siempre somos root, respondemos "false" POR ADELANTADO usando
# debconf-set-selections para que no detenga el build esperando input.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# ----------------------------------------------------------------------------
# RUN: ejecutar comandos durante la construcción de la imagen
# ----------------------------------------------------------------------------
# Aquí instalamos TODO el software del curso en un solo RUN.
#
#   apt-get update          -> actualiza la lista de paquetes disponibles
#   apt-get install         -> descarga e instala los paquetes listados
#     -y                    -> responde "sí" automáticamente
#     --no-install-recommends -> instala SOLO lo esencial (no los extras
#                                sugeridos). Ahorra cientos de MB.
#
# ¿Por qué un solo RUN gigante y no 10 RUN pequeños?
# Porque CADA RUN crea una capa nueva en la imagen. Menos capas = imagen
# más pequeña, más rápida de construir y de descargar.
#
# El "&&" encadena comandos: ejecuta el siguiente SOLO SI el anterior
# terminó bien. Si algo falla, el build se detiene con error (que es lo
# que queremos: mejor un error claro que una imagen rota).
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # === Editores de texto y shells (intérpretes de comandos) ===
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Herramientas de 4ta generación ===
    # Estas son las protagonistas de las Unidades 2, 3 y 4:
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === Utilidades básicas de UNIX ===
    # coreutils trae cat, ls, head, tail, sort, cut, tr, etc.
    # findutils trae find y xargs.
    # procps trae ps, top, kill (gestión de procesos).
    # less = paginador para leer archivos largos.
    # tree = muestra directorios como árbol.
    # jq = procesa JSON desde la línea de comandos.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Páginas de manual (comando `man`) ===
    # La imagen base de Kali viene sin documentación para
    # ahorrar espacio. La reinstalamos porque en el curso "man bash" o
    # "man grep" es material de consulta obligada.
    man-db \
    manpages \
    manpages-posix \
    \
    # === Red básica y utilidades de descarga ===
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Linter (revisor automático de errores) para scripts Bash ===
    shellcheck \
    \
    # === Reconocimiento y escaneo de red ===
    # nmap = el escáner de puertos más famoso.
    # masscan = escaneo masivo de rangos grandes de IPs.
    nmap \
    masscan \
    \
    # === Captura y análisis de paquetes de red ===
    # tcpdump = capturador clásico por terminal.
    # tshark = versión de terminal de Wireshark.
    tcpdump \
    tshark \
    \
    # === Utilidades de red variadas ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Anonimato: Tor y similares ===
    # tor = cliente de la red Tor.
    # torsocks = "envoltorio" que hace pasar cualquier comando por Tor.
    # proxychains4 = encadena múltiples proxies.
    # obfs4proxy = ofusca el tráfico de Tor para evadir bloqueos.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === Cliente HTTP más legible que curl para aprender ===
    httpie \
    \
 # --- Después de instalar, activamos el idioma español ---
 # sed busca "# es_ES.UTF-8" en /etc/locale.gen y le quita el "#" para
 # activar esa línea. Luego locale-gen compila los archivos de idioma.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Limpieza final: reducir el tamaño de la imagen ---
 # apt deja archivos de caché que ya no necesitamos después de instalar.
 # Borrarlos aquí (en el mismo RUN) hace la capa final más pequeña.
 # Si los borráramos en otro RUN, seguirían ocupando en la capa anterior.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh (un shell más limitado y antiguo). Lo
# cambiamos a bash por si agregamos más instrucciones con sintaxis
# moderna (arrays, [[ ]], etc.).
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.
WORKDIR /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash
RUN chsh -s /usr/bin/zsh root

RUN cat >> /root/.zshrc <<'EOF'

PROMPT='%F{cyan}[Jeniffer-Condor]%f %F{yellow}%1~%f %(?.%F{green}✓.%F{red}✘ %?)%f %# ' 
EOF

CMD ["/usr/bin/zsh"]

##documentation of the 3 chapters ##

# =============================================================================
# BLOCK A — Base Image
# =============================================================================
# FROM tells Docker which base image to start from. A base image is a pre-built
# filesystem snapshot that serves as the foundation for our container. Think of
# it as the starting environment that every subsequent instruction builds on top
# of.
#
# We use kalilinux/kali-rolling:latest because Kali Linux is a Debian-based
# distribution designed specifically for penetration testing and security work.
# It comes pre-configured with many hacking and forensics tools, which is
# exactly the kind of environment described in BHB Ch. 3 ("Setting Up a Hacking
# Lab"). The "rolling" variant means packages are continuously updated, so we
# always get recent tool versions.
# =============================================================================
FROM kalilinux/kali-rolling:latest

# =============================================================================
# BLOCK B — Image / Layer / Cache concept (applies to every instruction below)
# =============================================================================
# Every instruction in a Dockerfile creates a new read-only LAYER on top of the
# previous one. Docker caches these layers: if a layer's instruction hasn't
# changed, Docker reuses the cached version instead of rebuilding it. This is
# why instruction ORDER matters — instructions that change rarely (like ENV
# settings) should come before instructions that change often (like installing
# packages), so Docker can skip re-running the stable layers and only redo
# what actually changed.
#
# Keeping related commands together in a SINGLE RUN (using && to chain them,
# as explained in BHB Ch. 1 — Control Operators) also minimizes the total
# number of layers, which keeps the final image smaller.
# =============================================================================

# =============================================================================
# BLOCK C — Environment Variables
# =============================================================================
# ENV sets environment variables that are available to every subsequent
# instruction and also to any process running inside the finished container.
# As BHB Ch. 1 explains, environment variables are key-value pairs loaded
# automatically by the shell; programs inspect them to adjust their behavior
# (e.g., checking SHELL, HOME, LANG).
#
# DEBIAN_FRONTEND=noninteractive — tells apt (and any interactive installer) not
#   to display prompts waiting for user input. Without this, some packages would
#   hang asking questions during a non-interactive Docker build.
#
# LANG=es_EC.UTF-8 — sets the default locale to Spanish (Ecuador, UTF-8). This
#   controls how the shell formats dates, numbers, and which character encoding
#   is assumed for text. UTF-8 is important so accented characters work correctly.
#
# LC_ALL=es_EC.UTF-8 — overrides ALL locale-related sub-categories at once,
#   ensuring a consistent Spanish locale regardless of per-category settings
#   (LC_CTYPE, LC_MESSAGES, etc.).
#
# TERM=xterm-256color — tells terminal applications that the terminal emulator
#   supports 256 colors and xterm control sequences. Tools like vim, tmux, and
#   zsh themes rely on this to display colors and cursor movements correctly.
# =============================================================================
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_EC.UTF-8 \
    LC_ALL=es_EC.UTF-8 \
    TERM=xterm-256color

# =============================================================================
# BLOCK D — Pre-answering the Wireshark debconf prompt
# =============================================================================
# Some packages ask configuration questions through debconf (Debian's
# package configuration system) when they are installed. Wireshark, for
# example, asks whether non-root users should be allowed to capture packets.
#
# Because we set DEBIAN_FRONTEND=noninteractive above, the prompt would be
# silently skipped with the default value (usually "no"). To make sure we get
# the answer we actually want ("yes" — allowing non-root capture), we use
# debconf-set-selections to pre-populate the answer before apt installs the
# package. This is the Docker-friendly way to configure packages that would
# otherwise require interactive input.
# =============================================================================
RUN echo "wireshark-common wireshark-common/install-setuid boolean true" \
    | debconf-set-selections

# =============================================================================
# BLOCK E — Updating package lists and installing tools
# =============================================================================
# This is the main installation layer. Several important ideas from BHB Ch. 1-3
# come together here:
#
# WHY ONE BIG RUN?
#   Each RUN creates a new Docker layer. If we split every apt-get install into
#   separate RUN commands, we'd create many extra layers, increasing image size.
#   Combining everything with && (logical AND from BHB Ch. 1) means all
#   commands share a single layer. The trailing backslash (\) at the end of
#   each line is a line-continuation character — it keeps the command readable
#   across multiple lines without splitting it into separate shell commands.
#
# apt-get update
#   Refreshes the list of available packages from the configured repositories.
#   This must run BEFORE install; otherwise apt would try to install from a
#   potentially outdated package index and fail.
#
# apt-get install -y --no-install-recommends
#   -y          → automatically answers "yes" to all prompts (needed since
#                 DEBIAN_FRONTEND=noninteractive suppresses interaction).
#   --no-install-recommends → skips "recommended" packages that are not
#                 strictly required. This keeps the image leaner.
#
# SELECTED TOOLS (what they're for, relevant to BHB):
#   gawk        — the GNU implementation of awk, the text field-extraction
#                 tool covered extensively in BHB Ch. 2 ("Filtering with awk").
#   sed         — stream editor for substituting and deleting text in files or
#                 pipelines, covered in BHB Ch. 2 ("Editing Streams with sed").
#   grep        — filters lines matching a pattern from stdin or files; central
#                 to the text-processing workflows in BHB Ch. 2.
#   shellcheck  — a static analysis tool for shell scripts; it reports syntax
#                 errors and bad practices, helping with the debugging
#                 techniques described in BHB Ch. 1.
#   nmap        — network scanner for host discovery and port scanning;
#                 introduced in BHB Ch. 3 as one of the key hacking lab tools.
#   tcpdump     — command-line packet capture tool; useful for monitoring
#                 network traffic during penetration tests.
#   tshark      — the terminal version of Wireshark; captures and dissects
#                 network packets from the command line.
#   tor / proxychains4 — together they allow routing TCP traffic through the
#                 Tor anonymization network, useful in offensive security work.
#   jq          — parses and filters JSON from the command line; handy when
#                 scripts consume API responses (a common pattern in automation).
#   man-db      — provides the man (manual) command. BHB Ch. 1 recommends
#                 using "man <command>" to learn any tool's options and flags.
#   zsh / zsh-autosuggestions / zsh-syntax-highlighting — the Z Shell and two
#                 popular plugins that improve the interactive shell experience
#                 (used later when we switch the default shell to zsh).
#   git / git-lfs — version control system and large-file extension; the lab
#                 in BHB Ch. 3 requires cloning the book's repository.
#   locales     — needed to generate the Spanish locale configured in BLOCK C.
#   curl / wget — HTTP transfer tools for downloading files from scripts.
#   python3 / pip3 — Python runtime and package manager; many security scripts
#                 and tools are Python-based.
# =============================================================================
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        gawk \
        sed \
        grep \
        shellcheck \
        nmap \
        tcpdump \
        tshark \
        wireshark \
        tor \
        proxychains4 \
        jq \
        man-db \
        zsh \
        zsh-autosuggestions \
        zsh-syntax-highlighting \
        git \
        git-lfs \
        locales \
        curl \
        wget \
        python3 \
        python3-pip \
        net-tools \
        iputils-ping \
        dnsutils \
        whois \
        traceroute \
        netcat-openbsd \
        openssh-client \
        vim \
        nano \
        tmux \
        htop \
        tree \
        unzip \
        zip \

# =============================================================================
# BLOCK F — Enabling the Spanish locale
# =============================================================================
# The locales package was installed above, but the specific locale file
# (es_EC.UTF-8) is not active until we uncomment it in /etc/locale.gen and
# then regenerate the locale database.
#
# sed -i 's/# es_EC.UTF-8 UTF-8/es_EC.UTF-8 UTF-8/' /etc/locale.gen
#   The -i flag makes sed edit the file in place (BHB Ch. 2).
#   It finds the commented-out es_EC entry and removes the leading "# " so
#   the locale generator will include it.
#
# locale-gen
#   Reads /etc/locale.gen and compiles the listed locales into binary files
#   that glibc uses at runtime to format text correctly.
#
# Both commands are in the same RUN as the apt-get install above to avoid
# creating an extra layer (BLOCK B).
# =============================================================================
        && sed -i 's/# es_EC.UTF-8 UTF-8/es_EC.UTF-8 UTF-8/' /etc/locale.gen \
        && locale-gen \

# =============================================================================
# BLOCK G — Cleaning up the apt cache
# =============================================================================
# apt-get clean removes the downloaded .deb package files from /var/cache/apt.
# rm -rf /var/lib/apt/lists/* deletes the package index files fetched by
# apt-get update.
#
# WHY DO THIS IN THE SAME RUN?
#   Docker layers are immutable snapshots. If we ran the cleanup in a separate
#   RUN instruction, the cache files would still be stored inside the earlier
#   layer and the total image size would not decrease. By placing the cleanup
#   in the SAME RUN (using &&), we ensure those files are never committed to
#   any layer at all, keeping the final image as small as possible.
# =============================================================================
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# =============================================================================
# BLOCK H — Switching the default shell for RUN instructions to bash
# =============================================================================
# By default, Docker executes RUN instructions with /bin/sh. The SHELL
# instruction overrides this. We switch to /bin/bash with the -c flag so that
# all subsequent RUN steps have access to bash-specific syntax (arrays, [[ ]],
# process substitution, etc.) as described throughout BHB Ch. 1 and 2.
#
# This matters because /bin/sh on Debian/Kali is actually dash, a minimal
# POSIX shell that does NOT support many bash features. Switching to bash
# here ensures our later RUN commands behave exactly as they would in a
# bash terminal.
# =============================================================================
SHELL ["/bin/bash", "-c"]

# =============================================================================
# BLOCK I — Setting the working directory
# =============================================================================
# WORKDIR sets the default directory for all subsequent RUN, COPY, ADD, and CMD
# instructions, and also for the shell session when a developer attaches to the
# container. If the directory does not exist, Docker creates it automatically.
#
# /workspaces is the conventional mount point used by VS Code Dev Containers —
# the host project folder is mounted here when the devcontainer is opened,
# making the source code immediately accessible without needing to cd first.
# =============================================================================
WORKDIR /workspaces

# =============================================================================
# BLOCK J — Configuring Git system-wide and installing Git LFS
# =============================================================================
# These settings apply to every user on the system (--system flag) rather than
# to a single user's ~/.gitconfig.
#
# git config --system core.autocrlf false
#   Disables automatic conversion of Windows line endings (CRLF) to Unix line
#   endings (LF). In a Linux container this conversion is unnecessary and can
#   corrupt binary files or cause unexpected diffs.
#
# git config --system core.longpaths true
#   Allows file paths longer than 260 characters. Some repositories (especially
#   on Windows-style paths) include deeply nested filenames that would otherwise
#   fail to check out.
#
# git lfs install --system
#   Installs the Git Large File Storage hooks system-wide. BHB Ch. 3 uses the
#   book's GitHub repository which may include large binary assets tracked with
#   LFS. Without this command, git clone would download LFS pointer files
#   instead of the actual content.
# =============================================================================
RUN git config --system core.autocrlf false \
    && git config --system core.longpaths true \
    && git lfs install --system

# =============================================================================
# BLOCK K — Changing root's default shell to zsh
# =============================================================================
# chsh -s (change shell) sets the login shell for a user. Here we change it
# for root to /usr/bin/zsh.
#
# As BHB Ch. 1 mentions, Kali (and macOS) actually use zsh as their default
# interactive shell. Zsh provides better tab completion, plugin support, and
# theming compared to bash, making it more comfortable for day-to-day
# penetration testing work. The book even notes "chsh -s /bin/bash" as the
# command to switch TO bash if you prefer it — here we do the reverse.
# =============================================================================
RUN chsh -s /usr/bin/zsh root

# =============================================================================
# BLOCK L — Configuring the zsh shell via a heredoc
# =============================================================================
# HEREDOC (<<'EOF' ... EOF):
#   A here-document is a redirection operator (BHB Ch. 1, "Redirection
#   Operators") that feeds multiple lines of text directly to a command as if
#   they were a file. The single-quoted delimiter ('EOF') means the content is
#   treated literally — no variable expansion or command substitution happens
#   inside it. The >> operator appends the lines to the file rather than
#   overwriting it.
#
# cat >> /root/.zshrc <<'EOF' ... EOF
#   Appends the block of text to the root user's zsh configuration file
#   (~/.zshrc). Zsh sources this file every time an interactive shell session
#   starts, so anything placed here runs automatically on login.
#
# WHAT THE LINES INSIDE THE HEREDOC DO:
#   source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#     Loads the zsh-autosuggestions plugin, which shows ghost-text command
#     suggestions based on your history as you type.
#
#   source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#     Loads the syntax-highlighting plugin, which colors valid commands green
#     and invalid ones red in real time, making it easier to catch typos.
#
#   PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '
#     Sets the shell prompt. The format codes mean:
#       %F{green} / %f  — start/end green foreground color
#       %n              — username (root)
#       @%m             — @ symbol + hostname
#       %F{blue}%~%f    — current directory path in blue
#       $               — prompt character (conventionally $ for normal users,
#                         # for root, but the $ here is a style choice)
#     A descriptive prompt showing user, host, and working directory is
#     mentioned in BHB Ch. 2 as part of bash/shell customization for
#     penetration testers.
# =============================================================================
RUN cat >> /root/.zshrc <<'EOF'
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '
EOF

# =============================================================================
# BLOCK M — Default command when the container starts
# =============================================================================
# CMD specifies what process to run when the container is launched without an
# explicit command override. It is different from RUN:
#
#   RUN  — executes during the IMAGE BUILD phase and creates a new layer.
#   CMD  — does NOT execute at build time; it runs when a container is STARTED
#          from the finished image.
#
# Only the last CMD in a Dockerfile takes effect. Unlike RUN, CMD can be
# overridden at runtime by passing a command after "docker run <image>".
#
# Here we start /usr/bin/zsh, so when a developer opens a terminal in the
# devcontainer they land directly in an interactive zsh session, with all the
# customizations from BLOCK L already active. This is consistent with the
# recommendation in BHB Ch. 1 that every shell session begins in a known,
# configured environment.
# =============================================================================
CMD ["/usr/bin/zsh"]