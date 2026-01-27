tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sudo apt install -y php8.2-dev php-pear unixodbc-dev
sudo pecl install sqlsrv pdo_sqlsrv
[sudo] password for tommy: 
php8.2-dev is already the newest version (8.2.30-1+0~20251218.82+debian13~1.gbpea562a).
php-pear is already the newest version (1:1.10.16+submodules+notgz-3).
php-pear set to manually installed.
unixodbc-dev is already the newest version (2.3.12-2).
The following packages were automatically installed and are no longer required:
  breeze-cursor-theme           libkf6contacts-data            libkf6userfeedbackwidgets6        libxfconf-0-3
  breeze-icon-theme             libkf6contacts6                libkf6xmlgui-data                 libxmmsclient-glib1
  breeze-wallpaper              libkf6declarative-data         libkf6xmlgui6                     libxmmsclient6
  diodon                        libkf6dnssd-data               libkfontinst6                     libzeitgeist-2.0-0
  dolphin-data                  libkf6dnssd6                   libkfontinstui6                   linux-image-6.12.48+deb13-amd64
  dolphin-doc                   libkf6doctools6                libkmpris6                        lxappearance-obconf
  ffmpegthumbs                  libkf6filemetadata-bin         libkpipewire-data                 lxinput
  fonts-hack                    libkf6filemetadata-data        libkpipewire6                     lxmusic
  frameworkintegration6         libkf6filemetadata3            libkpipewiredmabuf6               mousepad
  gnome-brave-icon-theme        libkf6globalaccel-data         libkpipewirerecord6               network-manager-applet
  gnome-colors                  libkf6globalaccel6             libkscreen-bin                    numlockx
  gnome-colors-common           libkf6holidays-data            libkscreen-data                   okular-data
  gnome-dust-icon-theme         libkf6holidays6                libksysguard-data                 okular-doc
  gnome-human-icon-theme        libkf6i18nlocaledata6          libksysguardformatter2            phonon-backend-vlc-common
  gnome-illustrious-icon-theme  libkf6iconthemes-bin           libksysguardsensorfaces2          phonon4qt6
  gnome-noble-icon-theme        libkf6iconthemes-data          libksysguardsensors2              phonon4qt6-backend-vlc
  gnome-system-tools            libkf6iconthemes6              libksysguardsystemstats2          powerdevil
  gnome-wine-icon-theme         libkf6iconwidgets6             libkwaylandclient6                powerdevil-data
  gnome-wise-icon-theme         libkf6idletime6                libkworkspace6-6                  python3-sentry-sdk
  gucharmap                     libkf6itemmodels6              liblayershellqtinterface6         qdbus-qt6
  install-info                  libkf6itemviews-data           libminizip1t64                    qml6-module-org-kde-activities
  isa-support                   libkf6itemviews6               libmousepad0                      qml6-module-org-kde-bluezqt
  kf6-breeze-icon-theme         libkf6jobwidgets-data          liboobs-1-5                       qml6-module-org-kde-breeze
  kimageformat6-plugins         libkf6jobwidgets6              libosmesa6                        qml6-module-org-kde-config
  kio-extras-data               libkf6kcmutils-bin             libosmesa6:i386                   qml6-module-org-kde-coreaddons
  kirigami-addons-data          libkf6kcmutils-data            libpackagekitqt6-1                qml6-module-org-kde-desktop
  konqueror-data                libkf6kcmutils6                libphonon-l10n                    qml6-module-org-kde-draganddrop
  konqueror-doc                 libkf6kcmutilscore6            libphonon4qt6-4t64                qml6-module-org-kde-guiaddons
  kpackagetool6                 libkf6kcmutilsquick6           libplasma-geolocation-interface6  qml6-module-org-kde-iconthemes
  kwayland-integration          libkf6kiocore6                 libplasma5support-data            qml6-module-org-kde-kcmutils
  kwayland5-data                libkf6kiofilewidgets6          libplasma6                        qml6-module-org-kde-kholidays
  kwayland6-data                libkf6kiogui6                  libplasmaactivities6              qml6-module-org-kde-kirigamiaddons-components
  kwin-data                     libkf6kiowidgets6              libplasmaactivitiesstats1         qml6-module-org-kde-kirigamiaddons-datetime
  layer-shell-qt                libkf6konqsettings7            libpoppler-qt6-3t64               qml6-module-org-kde-kirigamiaddons-delegates
  libaccounts-glib0             libkf6modemmanagerqt6          libpowerdevilcore2                qml6-module-org-kde-kirigamiaddons-formcard
  libaccounts-qt6-1             libkf6networkmanagerqt6        libprocesscore10                  qml6-module-org-kde-kirigamiaddons-treeview
  libappimage1.0abi1t64         libkf6newstuff-data            libqaccessibilityclient-qt6-0     qml6-module-org-kde-kitemmodels
  libappstreamqt3               libkf6newstuffcore6            libqalculate-data                 qml6-module-org-kde-kquickcontrols
  libayatana-appindicator3-1    libkf6newstuffwidgets6         libqalculate23                    qml6-module-org-kde-kquickcontrolsaddons
  libbatterycontrol6            libkf6notifyconfig-data        libqcoro6dbus0t64                 qml6-module-org-kde-ksvg
  libboost-filesystem1.83.0     libkf6package-data             libqmobipocket6-2                 qml6-module-org-kde-ksysguard
  libcolorcorrect6              libkf6package6                 libqt5quickcontrols2-5            qml6-module-org-kde-kwindowsystem
  libddcutil5                   libkf6parts-data               libqt5quicktemplates2-5           qml6-module-org-kde-newstuff
  libdee-1.0-4                  libkf6people-data              libqt6bluetooth6                  qml6-module-org-kde-notifications
  libdiodon0                    libkf6people6                  libqt6bluetooth6-bin              qml6-module-org-kde-people
  libdmtx0t64                   libkf6peoplebackend6           libqt6labsplatform6               qml6-module-org-kde-pipewire
  libdolphinvcs6                libkf6prison6                  libqt6multimedia6                 qml6-module-org-kde-prison
  libepub0                      libkf6prisonscanner6           libqt6openglwidgets6              qml6-module-org-kde-quickcharts
  libfakekey0                   libkf6pty-data                 libqt6positioning6                qml6-module-org-kde-sonnet
  libgucharmap-2-90-7           libkf6pty6                     libqt6positioning6-plugins        qml6-module-org-kde-syntaxhighlighting
  libjs-jquery                  libkf6pulseaudioqt5            libqt6positioningquick6           qml6-module-org-kde-userfeedback
  libjs-underscore              libkf6purpose-data             libqt6printsupport6               qml6-module-qt-labs-folderlistmodel
  libkaccounts6-2               libkf6purpose6                 libqt6quickwidgets6               qml6-module-qt-labs-platform
  libkdcrawqt6-5                libkf6purposewidgets6          libqt6sensors6                    qml6-module-qt-labs-qmlmodels
  libkdecorations3-6            libkf6qqc2desktopstyle-data    libqt6serialport6                 qml6-module-qt5compat-graphicaleffects
  libkdecorations3private2      libkf6runner6                  libqt6shadertools6                qml6-module-qtcore
  libkdsoap-qt6-2               libkf6screen8                  libqt6sql6                        qml6-module-qtmultimedia
  libkdsoapwsdiscoveryclient0   libkf6screendpms8              libqt6sql6-sqlite                 qml6-module-qtpositioning
  libkexiv2qt6-0                libkf6service-bin              libqt6texttospeech6               qml6-module-qtquick-dialogs
  libkf5kirigami2-5             libkf6service-data             libqt6uitools6                    qml6-module-qtquick-particles
  libkf5style5                  libkf6service6                 libqt6virtualkeyboard6            qml6-module-qtquick-tooling
  libkf5waylandclient5          libkf6solid-data               libqt6webchannel6                 qml6-module-qtquick-virtualkeyboard
  libkf5windowsystem-data       libkf6solid6                   libqt6webchannelquick6            qml6-module-qtwebchannel
  libkf5windowsystem5           libkf6sonnet-data              libqt6webengine6-data             qml6-module-qtwebengine
  libkf6archive-data            libkf6sonnetcore6              libqt6webenginecore6              qml6-module-sso-onlineaccounts
  libkf6archive6                libkf6sonnetui6                libqt6webenginecore6-bin          qt6-virtualkeyboard-plugin
  libkf6attica6                 libkf6statusnotifieritem-data  libqt6webenginequick6             signon-plugin-oauth2
  libkf6auth-data               libkf6statusnotifieritem6      libqt6webenginewidgets6           sonnet6-plugins
  libkf6authcore6               libkf6style6                   libquickcharts1                   sse3-support
  libkf6baloo6                  libkf6su-bin                   libquickchartscontrols1           sshfs
  libkf6balooengine6            libkf6su-data                  libsignon-plugins-common1         system-tools-backends
  libkf6bluezqt-data            libkf6su6                      libsignon-qt6-1                   systemd-coredump
  libkf6bluezqt6                libkf6svg6                     libsquashfuse0                    usermode
  libkf6bookmarks-data          libkf6syndication6             libtaskmanager6                   xarchiver
  libkf6bookmarks6              libkf6syntaxhighlighting-data  libuser1                          xfconf
  libkf6bookmarkswidgets6       libkf6syntaxhighlighting6      libxapian30                       xmms2-core
  libkf6breezeicons6            libkf6texteditor-data          libxcb-dpms0                      xmms2-plugin-alsa
  libkf6calendarevents6         libkf6textwidgets-data         libxcb-record0                    xmms2-plugin-id3v2
  libkf6codecs-data             libkf6textwidgets6             libxdgutilsbasedir1.0.1           xmms2-plugin-mad
  libkf6codecs6                 libkf6threadweaver6            libxdgutilsdesktopentry1.0.1      xmms2-plugin-vorbis
  libkf6completion-data         libkf6unitconversion-data      libxfce4ui-2-0                    xwaylandvideobridge
  libkf6completion6             libkf6unitconversion6          libxfce4ui-common                 zeitgeist-core
  libkf6configqml6              libkf6userfeedback-data        libxfce4util-bin
  libkf6configwidgets-data      libkf6userfeedback-doc         libxfce4util-common
  libkf6configwidgets6          libkf6userfeedbackcore6        libxfce4util7
Use 'sudo apt autoremove' to remove them.

Summary:
  Upgrading: 0, Installing: 0, Removing: 0, Not Upgrading: 15
PHP Warning:  PHP Startup: Unable to load dynamic library 'pdo_sqlsrv' (tried: /usr/lib/php/20220829/pdo_sqlsrv (/usr/lib/php/20220829/pdo_sqlsrv: cannot open shared object file: No such file or directory), /usr/lib/php/20220829/pdo_sqlsrv.so (/usr/lib/php/20220829/pdo_sqlsrv.so: cannot open shared object file: No such file or directory)) in Unknown on line 0
PHP Warning:  PHP Startup: Unable to load dynamic library 'sqlsrv' (tried: /usr/lib/php/20220829/sqlsrv (/usr/lib/php/20220829/sqlsrv: cannot open shared object file: No such file or directory), /usr/lib/php/20220829/sqlsrv.so (/usr/lib/php/20220829/sqlsrv.so: cannot open shared object file: No such file or directory)) in Unknown on line 0
WARNING: channel "pecl.php.net" has updated its protocols, use "pecl channel-update pecl.php.net" to update
downloading sqlsrv-5.12.0.tgz ...
Starting to download sqlsrv-5.12.0.tgz (193,767 bytes)
.........................................done: 193,767 bytes
downloading pdo_sqlsrv-5.12.0.tgz ...
Starting to download pdo_sqlsrv-5.12.0.tgz (188,170 bytes)
...done: 188,170 bytes
34 source files, building
running: phpize
Configuring for:
PHP Api Version:         20220829
Zend Module Api No:      20220829
Zend Extension Api No:   420220829
configure.ac:162: warning: The macro 'AC_PROG_LIBTOOL' is obsolete.
configure.ac:162: You should run autoupdate.
build/libtool.m4:100: AC_PROG_LIBTOOL is expanded from...
configure.ac:162: the top level
building in /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0
running: /tmp/pear/temp/sqlsrv/configure --with-php-config=/usr/bin/php-config
checking for grep that handles long lines and -e... /usr/bin/grep
checking for egrep... /usr/bin/grep -E
checking for a sed that does not truncate output... /usr/bin/sed
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether the compiler supports GNU C... yes
checking whether cc accepts -g... yes
checking for cc option to enable C11 features... none needed
checking how to run the C preprocessor... cc -E
checking for egrep -e... (cached) /usr/bin/grep -E
checking for icc... no
checking for suncc... no
checking for system library directory... lib
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... x86_64-pc-linux-gnu
checking for PHP prefix... /usr
checking for PHP includes... -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib
checking for PHP extension directory... /usr/lib/php/20220829
checking for PHP installed headers prefix... /usr/include/php/20220829
checking if debug is enabled... no
checking if zts is enabled... no
checking for gawk... gawk
checking whether to enable sqlsrv functions... yes, shared
checking for SQLSRV headers... /tmp/pear/temp/sqlsrv/shared/
checking for g++... g++
checking whether the compiler supports GNU C++... yes
checking whether g++ accepts -g... yes
checking for g++ option to enable C++11 features... none needed
checking how to run the C++ preprocessor... g++ -E
checking how to print strings... printf
checking for a sed that does not truncate output... (cached) /usr/bin/sed
checking for fgrep... /usr/bin/grep -F
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... /usr/bin/nm -B
checking the name lister (/usr/bin/nm -B) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1572864
checking how to convert x86_64-pc-linux-gnu file names to x86_64-pc-linux-gnu format... func_convert_file_noop
checking how to convert x86_64-pc-linux-gnu file names to toolchain format... func_convert_file_noop
checking for /usr/bin/ld option to reload object files... -r
checking for file... file
checking for objdump... objdump
checking how to recognize dependent libraries... pass_all
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for ranlib... ranlib
checking for ar... ar
checking for archiver @FILE support... @
checking for strip... strip
checking for gawk... (cached) gawk
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for sysroot... no
checking for a working dd... /usr/bin/dd
checking how to truncate binary pipes... /usr/bin/dd bs=4096 count=1
checking for mt... mt
checking if mt is a manifest tool... no
checking for stdio.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for strings.h... yes
checking for sys/stat.h... yes
checking for sys/types.h... yes
checking for unistd.h... yes
checking for dlfcn.h... yes
checking for objdir... .libs
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC -DPIC
checking if cc PIC flag -fPIC -DPIC works... yes
checking if cc static flag -static works... yes
checking if cc supports -c -o file.o... yes
checking if cc supports -c -o file.o... (cached) yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
checking how to run the C++ preprocessor... g++ -E
checking for ld used by g++... /usr/bin/ld -m elf_x86_64
checking if the linker (/usr/bin/ld -m elf_x86_64) is GNU ld... yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking for g++ option to produce PIC... -fPIC -DPIC
checking if g++ PIC flag -fPIC -DPIC works... yes
checking if g++ static flag -static works... yes
checking if g++ supports -c -o file.o... yes
checking if g++ supports -c -o file.o... (cached) yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking dynamic linker characteristics... (cached) GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
configure: patching config.h.in
configure: creating ./config.status
config.status: creating config.h
config.status: executing libtool commands
running: make
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/conn.cpp -o conn.lo  -MMD -MF conn.dep -MT conn.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/conn.cpp -MMD -MF conn.dep -MT conn.lo  -fPIC -DPIC -o .libs/conn.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/util.cpp -o util.lo  -MMD -MF util.dep -MT util.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/util.cpp -MMD -MF util.dep -MT util.lo  -fPIC -DPIC -o .libs/util.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/init.cpp -o init.lo  -MMD -MF init.dep -MT init.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/init.cpp -MMD -MF init.dep -MT init.lo  -fPIC -DPIC -o .libs/init.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/stmt.cpp -o stmt.lo  -MMD -MF stmt.dep -MT stmt.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/stmt.cpp -MMD -MF stmt.dep -MT stmt.lo  -fPIC -DPIC -o .libs/stmt.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_conn.cpp -o shared/core_conn.lo  -MMD -MF shared/core_conn.dep -MT shared/core_conn.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_conn.cpp -MMD -MF shared/core_conn.dep -MT shared/core_conn.lo  -fPIC -DPIC -o shared/.libs/core_conn.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_results.cpp -o shared/core_results.lo  -MMD -MF shared/core_results.dep -MT shared/core_results.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_results.cpp -MMD -MF shared/core_results.dep -MT shared/core_results.lo  -fPIC -DPIC -o shared/.libs/core_results.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_stream.cpp -o shared/core_stream.lo  -MMD -MF shared/core_stream.dep -MT shared/core_stream.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_stream.cpp -MMD -MF shared/core_stream.dep -MT shared/core_stream.lo  -fPIC -DPIC -o shared/.libs/core_stream.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_init.cpp -o shared/core_init.lo  -MMD -MF shared/core_init.dep -MT shared/core_init.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_init.cpp -MMD -MF shared/core_init.dep -MT shared/core_init.lo  -fPIC -DPIC -o shared/.libs/core_init.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_stmt.cpp -o shared/core_stmt.lo  -MMD -MF shared/core_stmt.dep -MT shared/core_stmt.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_stmt.cpp -MMD -MF shared/core_stmt.dep -MT shared/core_stmt.lo  -fPIC -DPIC -o shared/.libs/core_stmt.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_util.cpp -o shared/core_util.lo  -MMD -MF shared/core_util.dep -MT shared/core_util.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/core_util.cpp -MMD -MF shared/core_util.dep -MT shared/core_util.lo  -fPIC -DPIC -o shared/.libs/core_util.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/FormattedPrint.cpp -o shared/FormattedPrint.lo  -MMD -MF shared/FormattedPrint.dep -MT shared/FormattedPrint.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/FormattedPrint.cpp -MMD -MF shared/FormattedPrint.dep -MT shared/FormattedPrint.lo  -fPIC -DPIC -o shared/.libs/FormattedPrint.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/localizationimpl.cpp -o shared/localizationimpl.lo  -MMD -MF shared/localizationimpl.dep -MT shared/localizationimpl.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/localizationimpl.cpp -MMD -MF shared/localizationimpl.dep -MT shared/localizationimpl.lo  -fPIC -DPIC -o shared/.libs/localizationimpl.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/StringFunctions.cpp -o shared/StringFunctions.lo  -MMD -MF shared/StringFunctions.dep -MT shared/StringFunctions.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/sqlsrv -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/sqlsrv/shared/StringFunctions.cpp -MMD -MF shared/StringFunctions.dep -MT shared/StringFunctions.lo  -fPIC -DPIC -o shared/.libs/StringFunctions.o
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CC --mode=link cc -shared -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/main -I/tmp/pear/temp/sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/sqlsrv/shared/  -DHAVE_CONFIG_H  -g -O2 -D_GNU_SOURCE    -o sqlsrv.la -export-dynamic -avoid-version -prefer-pic -module -rpath /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/modules  conn.lo util.lo init.lo stmt.lo shared/core_conn.lo shared/core_results.lo shared/core_stream.lo shared/core_init.lo shared/core_stmt.lo shared/core_util.lo shared/FormattedPrint.lo shared/localizationimpl.lo shared/StringFunctions.lo -Wl,-z,now -lstdc++ -lodbc -lodbcinst
libtool: link: cc -shared  -fPIC -DPIC  .libs/conn.o .libs/util.o .libs/init.o .libs/stmt.o shared/.libs/core_conn.o shared/.libs/core_results.o shared/.libs/core_stream.o shared/.libs/core_init.o shared/.libs/core_stmt.o shared/.libs/core_util.o shared/.libs/FormattedPrint.o shared/.libs/localizationimpl.o shared/.libs/StringFunctions.o   -lstdc++ -lodbc -lodbcinst  -g -O2 -Wl,-z -Wl,now   -Wl,-soname -Wl,sqlsrv.so -o .libs/sqlsrv.so
libtool: link: ( cd ".libs" && rm -f "sqlsrv.la" && ln -s "../sqlsrv.la" "sqlsrv.la" )
/bin/bash /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/libtool --tag=CC --mode=install cp ./sqlsrv.la /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/modules
libtool: install: cp ./.libs/sqlsrv.so /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/modules/sqlsrv.so
libtool: install: cp ./.libs/sqlsrv.lai /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/modules/sqlsrv.la
libtool: finish: PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/sbin" ldconfig -n /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /tmp/pear/temp/pear-build-root7hmOr9/sqlsrv-5.12.0/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the '-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the 'LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the 'LD_RUN_PATH' environment variable
     during linking
   - use the '-Wl,-rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to '/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

running: make INSTALL_ROOT="/tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0" install
Installing shared extensions:     /tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0/usr/lib/php/20220829/
running: find "/tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0" | xargs ls -dils
1149   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0
1527   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0/usr
1528   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0/usr/lib
1529   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0/usr/lib/php
1530   0 drwxr-xr-x 2 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0/usr/lib/php/20220829
1531 408 -rwxr-xr-x 1 root root 414208 Jan 28 04:04 /tmp/pear/temp/pear-build-root7hmOr9/install-sqlsrv-5.12.0/usr/lib/php/20220829/sqlsrv.so

Build process completed successfully
Installing '/usr/lib/php/20220829/sqlsrv.so'
install ok: channel://pecl.php.net/sqlsrv-5.12.0
35 source files, building
running: phpize
Configuring for:
PHP Api Version:         20220829
Zend Module Api No:      20220829
Zend Extension Api No:   420220829
configure.ac:162: warning: The macro 'AC_PROG_LIBTOOL' is obsolete.
configure.ac:162: You should run autoupdate.
build/libtool.m4:100: AC_PROG_LIBTOOL is expanded from...
configure.ac:162: the top level
building in /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0
running: /tmp/pear/temp/pdo_sqlsrv/configure --with-php-config=/usr/bin/php-config
checking for grep that handles long lines and -e... /usr/bin/grep
checking for egrep... /usr/bin/grep -E
checking for a sed that does not truncate output... /usr/bin/sed
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether the compiler supports GNU C... yes
checking whether cc accepts -g... yes
checking for cc option to enable C11 features... none needed
checking how to run the C preprocessor... cc -E
checking for egrep -e... (cached) /usr/bin/grep -E
checking for icc... no
checking for suncc... no
checking for system library directory... lib
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... x86_64-pc-linux-gnu
checking for PHP prefix... /usr
checking for PHP includes... -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib
checking for PHP extension directory... /usr/lib/php/20220829
checking for PHP installed headers prefix... /usr/include/php/20220829
checking if debug is enabled... no
checking if zts is enabled... no
checking for gawk... gawk
checking for pdo_sqlsrv support... yes, shared
checking for PDO includes... /usr/include/php/20220829/ext
checking for PDO_SQLSRV headers... /tmp/pear/temp/pdo_sqlsrv/shared/
checking for g++... g++
checking whether the compiler supports GNU C++... yes
checking whether g++ accepts -g... yes
checking for g++ option to enable C++11 features... none needed
checking how to run the C++ preprocessor... g++ -E
checking how to print strings... printf
checking for a sed that does not truncate output... (cached) /usr/bin/sed
checking for fgrep... /usr/bin/grep -F
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... /usr/bin/nm -B
checking the name lister (/usr/bin/nm -B) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1572864
checking how to convert x86_64-pc-linux-gnu file names to x86_64-pc-linux-gnu format... func_convert_file_noop
checking how to convert x86_64-pc-linux-gnu file names to toolchain format... func_convert_file_noop
checking for /usr/bin/ld option to reload object files... -r
checking for file... file
checking for objdump... objdump
checking how to recognize dependent libraries... pass_all
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for ranlib... ranlib
checking for ar... ar
checking for archiver @FILE support... @
checking for strip... strip
checking for gawk... (cached) gawk
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for sysroot... no
checking for a working dd... /usr/bin/dd
checking how to truncate binary pipes... /usr/bin/dd bs=4096 count=1
checking for mt... mt
checking if mt is a manifest tool... no
checking for stdio.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for strings.h... yes
checking for sys/stat.h... yes
checking for sys/types.h... yes
checking for unistd.h... yes
checking for dlfcn.h... yes
checking for objdir... .libs
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC -DPIC
checking if cc PIC flag -fPIC -DPIC works... yes
checking if cc static flag -static works... yes
checking if cc supports -c -o file.o... yes
checking if cc supports -c -o file.o... (cached) yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
checking how to run the C++ preprocessor... g++ -E
checking for ld used by g++... /usr/bin/ld -m elf_x86_64
checking if the linker (/usr/bin/ld -m elf_x86_64) is GNU ld... yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking for g++ option to produce PIC... -fPIC -DPIC
checking if g++ PIC flag -fPIC -DPIC works... yes
checking if g++ static flag -static works... yes
checking if g++ supports -c -o file.o... yes
checking if g++ supports -c -o file.o... (cached) yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking dynamic linker characteristics... (cached) GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
configure: patching config.h.in
configure: creating ./config.status
config.status: creating config.h
config.status: executing libtool commands
running: make
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_dbh.cpp -o pdo_dbh.lo  -MMD -MF pdo_dbh.dep -MT pdo_dbh.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_dbh.cpp -MMD -MF pdo_dbh.dep -MT pdo_dbh.lo  -fPIC -DPIC -o .libs/pdo_dbh.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_parser.cpp -o pdo_parser.lo  -MMD -MF pdo_parser.dep -MT pdo_parser.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_parser.cpp -MMD -MF pdo_parser.dep -MT pdo_parser.lo  -fPIC -DPIC -o .libs/pdo_parser.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_util.cpp -o pdo_util.lo  -MMD -MF pdo_util.dep -MT pdo_util.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_util.cpp -MMD -MF pdo_util.dep -MT pdo_util.lo  -fPIC -DPIC -o .libs/pdo_util.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_init.cpp -o pdo_init.lo  -MMD -MF pdo_init.dep -MT pdo_init.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_init.cpp -MMD -MF pdo_init.dep -MT pdo_init.lo  -fPIC -DPIC -o .libs/pdo_init.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_stmt.cpp -o pdo_stmt.lo  -MMD -MF pdo_stmt.dep -MT pdo_stmt.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/pdo_stmt.cpp -MMD -MF pdo_stmt.dep -MT pdo_stmt.lo  -fPIC -DPIC -o .libs/pdo_stmt.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_conn.cpp -o shared/core_conn.lo  -MMD -MF shared/core_conn.dep -MT shared/core_conn.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_conn.cpp -MMD -MF shared/core_conn.dep -MT shared/core_conn.lo  -fPIC -DPIC -o shared/.libs/core_conn.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_results.cpp -o shared/core_results.lo  -MMD -MF shared/core_results.dep -MT shared/core_results.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_results.cpp -MMD -MF shared/core_results.dep -MT shared/core_results.lo  -fPIC -DPIC -o shared/.libs/core_results.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_stream.cpp -o shared/core_stream.lo  -MMD -MF shared/core_stream.dep -MT shared/core_stream.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_stream.cpp -MMD -MF shared/core_stream.dep -MT shared/core_stream.lo  -fPIC -DPIC -o shared/.libs/core_stream.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_init.cpp -o shared/core_init.lo  -MMD -MF shared/core_init.dep -MT shared/core_init.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_init.cpp -MMD -MF shared/core_init.dep -MT shared/core_init.lo  -fPIC -DPIC -o shared/.libs/core_init.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_stmt.cpp -o shared/core_stmt.lo  -MMD -MF shared/core_stmt.dep -MT shared/core_stmt.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_stmt.cpp -MMD -MF shared/core_stmt.dep -MT shared/core_stmt.lo  -fPIC -DPIC -o shared/.libs/core_stmt.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_util.cpp -o shared/core_util.lo  -MMD -MF shared/core_util.dep -MT shared/core_util.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/core_util.cpp -MMD -MF shared/core_util.dep -MT shared/core_util.lo  -fPIC -DPIC -o shared/.libs/core_util.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/FormattedPrint.cpp -o shared/FormattedPrint.lo  -MMD -MF shared/FormattedPrint.dep -MT shared/FormattedPrint.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/FormattedPrint.cpp -MMD -MF shared/FormattedPrint.dep -MT shared/FormattedPrint.lo  -fPIC -DPIC -o shared/.libs/FormattedPrint.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/localizationimpl.cpp -o shared/localizationimpl.lo  -MMD -MF shared/localizationimpl.dep -MT shared/localizationimpl.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/localizationimpl.cpp -MMD -MF shared/localizationimpl.dep -MT shared/localizationimpl.lo  -fPIC -DPIC -o shared/.libs/localizationimpl.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CXX --mode=compile g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector   -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/StringFunctions.cpp -o shared/StringFunctions.lo  -MMD -MF shared/StringFunctions.dep -MT shared/StringFunctions.lo
libtool: compile:  g++ -I. -I/tmp/pear/temp/pdo_sqlsrv -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/ -DHAVE_CONFIG_H -std=c++11 -D_FORTIFY_SOURCE=2 -O2 -fstack-protector -I/usr/include/php/20220829/ext -std=c++11 -DZEND_COMPILE_DL_EXT=1 -c /tmp/pear/temp/pdo_sqlsrv/shared/StringFunctions.cpp -MMD -MF shared/StringFunctions.dep -MT shared/StringFunctions.lo  -fPIC -DPIC -o shared/.libs/StringFunctions.o
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CC --mode=link cc -shared -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/include -I/tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/main -I/tmp/pear/temp/pdo_sqlsrv -I/usr/include/php/20220829 -I/usr/include/php/20220829/main -I/usr/include/php/20220829/TSRM -I/usr/include/php/20220829/Zend -I/usr/include/php/20220829/ext -I/usr/include/php/20220829/ext/date/lib -I/tmp/pear/temp/pdo_sqlsrv/shared/  -DHAVE_CONFIG_H  -g -O2 -D_GNU_SOURCE    -o pdo_sqlsrv.la -export-dynamic -avoid-version -prefer-pic -module -rpath /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/modules  pdo_dbh.lo pdo_parser.lo pdo_util.lo pdo_init.lo pdo_stmt.lo shared/core_conn.lo shared/core_results.lo shared/core_stream.lo shared/core_init.lo shared/core_stmt.lo shared/core_util.lo shared/FormattedPrint.lo shared/localizationimpl.lo shared/StringFunctions.lo -Wl,-z,now -lstdc++ -lodbc -lodbcinst
libtool: link: cc -shared  -fPIC -DPIC  .libs/pdo_dbh.o .libs/pdo_parser.o .libs/pdo_util.o .libs/pdo_init.o .libs/pdo_stmt.o shared/.libs/core_conn.o shared/.libs/core_results.o shared/.libs/core_stream.o shared/.libs/core_init.o shared/.libs/core_stmt.o shared/.libs/core_util.o shared/.libs/FormattedPrint.o shared/.libs/localizationimpl.o shared/.libs/StringFunctions.o   -lstdc++ -lodbc -lodbcinst  -g -O2 -Wl,-z -Wl,now   -Wl,-soname -Wl,pdo_sqlsrv.so -o .libs/pdo_sqlsrv.so
libtool: link: ( cd ".libs" && rm -f "pdo_sqlsrv.la" && ln -s "../pdo_sqlsrv.la" "pdo_sqlsrv.la" )
/bin/bash /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/libtool --tag=CC --mode=install cp ./pdo_sqlsrv.la /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/modules
libtool: install: cp ./.libs/pdo_sqlsrv.so /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/modules/pdo_sqlsrv.so
libtool: install: cp ./.libs/pdo_sqlsrv.lai /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/modules/pdo_sqlsrv.la
libtool: finish: PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/sbin" ldconfig -n /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /tmp/pear/temp/pear-build-roothdut8m/pdo_sqlsrv-5.12.0/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the '-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the 'LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the 'LD_RUN_PATH' environment variable
     during linking
   - use the '-Wl,-rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to '/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

running: make INSTALL_ROOT="/tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0" install
Installing shared extensions:     /tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0/usr/lib/php/20220829/
running: find "/tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0" | xargs ls -dils
1660   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0
2041   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0/usr
2042   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0/usr/lib
2043   0 drwxr-xr-x 3 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0/usr/lib/php
2044   0 drwxr-xr-x 2 root root     60 Jan 28 04:04 /tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0/usr/lib/php/20220829
2045 408 -rwxr-xr-x 1 root root 415192 Jan 28 04:04 /tmp/pear/temp/pear-build-roothdut8m/install-pdo_sqlsrv-5.12.0/usr/lib/php/20220829/pdo_sqlsrv.so

Build process completed successfully
Installing '/usr/lib/php/20220829/pdo_sqlsrv.so'
install ok: channel://pecl.php.net/pdo_sqlsrv-5.12.0
configuration option "php_ini" is not set to php.ini location
You should add "extension=sqlsrv.so" to php.ini
configuration option "php_ini" is not set to php.ini location
You should add "extension=sqlsrv.so" to php.ini
configuration option "php_ini" is not set to php.ini location
You should add "extension=pdo_sqlsrv.so" to php.ini
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sudo nano /etc/php/8.2/mods-available/pdo_sqlsrv.ini
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sudo nano /etc/php/8.2/mods-available/sqlsrv.ini
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sudo phpenmod sqlsrv pdo_sqlsrv
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/8.4/mods-available
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/8.4/mods-available
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/8.1/mods-available
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/8.1/mods-available
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/8.1/mods-available
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/7.4/mods-available
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/7.4/mods-available
WARNING: Module sqlsrv ini file doesn't exist under /etc/php/7.4/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/8.4/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/8.4/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/8.1/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/8.1/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/8.1/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/7.4/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/7.4/mods-available
WARNING: Module pdo_sqlsrv ini file doesn't exist under /etc/php/7.4/mods-available
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sudo systemctl restart apache2
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ php8.2 index.php 
Koneksi SQL Server OK 🚀tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ 
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ 
