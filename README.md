tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ sudo docker cp input20251.bak sqlserver:/var/opt/mssql/data/
Successfully copied 513MB to sqlserver:/var/opt/mssql/data/
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ sudo docker exec -it sqlserver ls /var/opt/mssql/data/
Entropy.bin     mastlog.ldf         model_msdblog.ldf           modellog.ldf  tempdb.mdf   tempdb4.ndf  tempdb7.ndf
input20251.bak  model.mdf           model_replicatedmaster.ldf  msdbdata.mdf  tempdb2.ndf  tempdb5.ndf  tempdb8.ndf
master.mdf      model_msdbdata.mdf  model_replicatedmaster.mdf  msdblog.ldf   tempdb3.ndf  tempdb6.ndf  templog.ldf
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ sudo apt install -y curl gnupg apt-transport-https
curl is already the newest version (8.14.1-2+deb13u2).
gnupg is already the newest version (2.4.7-21+deb13u1).
gnupg set to manually installed.
apt-transport-https is already the newest version (3.0.3).
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
  Upgrading: 0, Installing: 0, Removing: 0, Not Upgrading: 4
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ curl https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   975  100   975    0     0   5059      0 --:--:-- --:--:-- --:--:--  5078File '/usr/share/keyrings/microsoft.gpg' exists. Overwrite? (y/N) 
                                                                              Y
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/debian/11/prod bullseye main" | sudo tee /etc/apt/sources.list.d/mssql-tools.list
deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/debian/11/prod bullseye main
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ sudo apt update
sudo apt install -y mssql-tools unixodbc-dev
Hit:1 http://security.debian.org/debian-security trixie-security InRelease
Hit:2 http://ftp.debian.org/debian trixie InRelease                                                                                                          
Hit:3 https://dl.google.com/linux/chrome/deb stable InRelease                                                                                                
Hit:4 http://deb.debian.org/debian bookworm InRelease                                                                     
Hit:5 http://ftp.debian.org/debian trixie-updates InRelease                                         
Hit:6 https://dl.winehq.org/wine-builds/debian trixie InRelease               
Get:7 https://packages.microsoft.com/debian/11/prod bullseye InRelease [3,650 B]        
Hit:8 https://packages.microsoft.com/repos/code stable InRelease                                     
Get:9 https://packages.microsoft.com/debian/11/prod bullseye/main amd64 Packages [228 kB]             
Get:10 https://packages.microsoft.com/debian/11/prod bullseye/main all Packages [1,506 B]             
Hit:11 https://deb.opera.com/opera-stable stable InRelease                        
Hit:12 https://packages.sury.org/php trixie InRelease     
Fetched 233 kB in 1s (239 kB/s)
4 packages can be upgraded. Run 'apt list --upgradable' to see them.
Notice: Skipping acquire of configured file 'main/binary-i386/Packages' as repository 'https://packages.microsoft.com/debian/11/prod bullseye InRelease' doesn't support architecture 'i386'
Notice: Skipping acquire of configured file 'main/binary-i386/Packages' as repository 'https://packages.sury.org/php trixie InRelease' doesn't support architecture 'i386'
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

Installing:
  mssql-tools  unixodbc-dev

Installing dependencies:
  libodbcinst2  msodbcsql17  odbcinst  unixodbc  unixodbc-common

Summary:
  Upgrading: 0, Installing: 7, Removing: 0, Not Upgrading: 4
  Download size: 1,287 kB
  Space needed: 2,113 kB / 41.6 GB available

Get:1 https://packages.microsoft.com/debian/11/prod bullseye/main amd64 msodbcsql17 amd64 17.10.6.1-1 [746 kB]
Get:2 http://ftp.debian.org/debian trixie/main amd64 unixodbc-common all 2.3.12-2 [8,640 B]
Get:3 http://ftp.debian.org/debian trixie/main amd64 libodbcinst2 amd64 2.3.12-2 [35.1 kB]
Get:4 http://ftp.debian.org/debian trixie/main amd64 odbcinst amd64 2.3.12-2 [12.7 kB]
Get:5 http://ftp.debian.org/debian trixie/main amd64 unixodbc amd64 2.3.12-2 [29.1 kB]
Get:6 https://packages.microsoft.com/debian/11/prod bullseye/main amd64 mssql-tools amd64 17.10.1.1-1 [221 kB]
Get:7 http://ftp.debian.org/debian trixie/main amd64 unixodbc-dev amd64 2.3.12-2 [234 kB]
Fetched 1,287 kB in 1s (2,449 kB/s)                                     
Preconfiguring packages ...
Selecting previously unselected package unixodbc-common.
(Reading database ... 413934 files and directories currently installed.)
Preparing to unpack .../0-unixodbc-common_2.3.12-2_all.deb ...
Unpacking unixodbc-common (2.3.12-2) ...
Selecting previously unselected package libodbcinst2:amd64.
Preparing to unpack .../1-libodbcinst2_2.3.12-2_amd64.deb ...
Unpacking libodbcinst2:amd64 (2.3.12-2) ...
Selecting previously unselected package odbcinst.
Preparing to unpack .../2-odbcinst_2.3.12-2_amd64.deb ...
Unpacking odbcinst (2.3.12-2) ...
Selecting previously unselected package unixodbc.
Preparing to unpack .../3-unixodbc_2.3.12-2_amd64.deb ...
Unpacking unixodbc (2.3.12-2) ...
Selecting previously unselected package unixodbc-dev:amd64.
Preparing to unpack .../4-unixodbc-dev_2.3.12-2_amd64.deb ...
Unpacking unixodbc-dev:amd64 (2.3.12-2) ...
Selecting previously unselected package msodbcsql17.
Preparing to unpack .../5-msodbcsql17_17.10.6.1-1_amd64.deb ...
Unpacking msodbcsql17 (17.10.6.1-1) ...
Selecting previously unselected package mssql-tools.
Preparing to unpack .../6-mssql-tools_17.10.1.1-1_amd64.deb ...
Unpacking mssql-tools (17.10.1.1-1) ...
Setting up unixodbc-common (2.3.12-2) ...
Setting up libodbcinst2:amd64 (2.3.12-2) ...
Setting up odbcinst (2.3.12-2) ...
Setting up unixodbc (2.3.12-2) ...
Setting up msodbcsql17 (17.10.6.1-1) ...
odbcinst: Driver installed. Usage count increased to 1. 
    Target directory is /etc
Setting up unixodbc-dev:amd64 (2.3.12-2) ...
Setting up mssql-tools (17.10.1.1-1) ...
Processing triggers for man-db (2.13.1-1) ...
Processing triggers for libc-bin (2.41-12+deb13u1) ...
Scanning processes...                                                                                                                                             
Scanning processor microcode...                                                                                                                                   
Scanning linux images...                                                                                                                                          

Running kernel seems to be up-to-date.

The processor microcode seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ sqlcmd -S 127.0.0.1,1433 -U SA -P "PasswordStrong123!"



Import database 

tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver/backup_db$ sqlcmd -S 127.0.0.1,1433 -U SA -P "PasswordStrong123!"
1> RESTORE FILELISTONLY
2> FROM DISK = '/var/opt/mssql/data/input20251.bak';
3> 
4> GO
LogicalName                                                                                                                      PhysicalName                                                                                                                                                                                                                                                         Type FileGroupName                                                                                                                    Size                 MaxSize              FileId               CreateLSN                   DropLSN                     UniqueId                             ReadOnlyLSN                 ReadWriteLSN                BackupSizeInBytes    SourceBlockSize FileGroupId LogGroupGUID                         DifferentialBaseLSN         DifferentialBaseGUID                 IsReadOnly IsPresent TDEThumbprint                              SnapshotUrl                                                                                                                                                                                                                                                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---- -------------------------------------------------------------------------------------------------------------------------------- -------------------- -------------------- -------------------- --------------------------- --------------------------- ------------------------------------ --------------------------- --------------------------- -------------------- --------------- ----------- ------------------------------------ --------------------------- ------------------------------------ ---------- --------- ------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
BMDv1_Data                                                                                                                       C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BMD20230k.mdf                                                                                                                                                                                D    PRIMARY                                                                                                                                     528416768       35184372080640                    1                           0                           0 00000000-0000-0000-0000-000000000000                           0                           0            512950272             512           1 NULL                                        34934000000005600122 063F2906-0F47-4E94-8BAB-80F7F6D87B26          0         1 NULL                                       NULL                                                                                                                                                                                                                                                                                                                                            
BMDv1_Log                                                                                                                        C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BMD20230k_1.ldf                                                                                                                                                                              L    NULL                                                                                                                                          1048576       35184372080640                    2                           0                           0 00000000-0000-0000-0000-000000000000                           0                           0                    0             512           0 NULL                                                           0 00000000-0000-0000-0000-000000000000          0         1 NULL                                       NULL                                                                                                                                                                                                                                                                                                                                            

(2 rows affected)

1> RESTORE DATABASE input20251
2> FROM DISK = '/var/opt/mssql/data/input20251.bak'
3> WITH MOVE 'BMDv1_Data' TO '/var/opt/mssql/data/input20251.mdf',
4> MOVE 'BMDv1_Log'  TO '/var/opt/mssql/data/input20251_log.ldf',
5> REPLACE;
6> GO
Processed 62616 pages for database 'input20251', file 'BMDv1_Data' on file 1.
Processed 1 pages for database 'input20251', file 'BMDv1_Log' on file 1.
Converting database 'input20251' from version 661 to the current version 904.
Database 'input20251' running the upgrade step from version 661 to version 668.
Database 'input20251' running the upgrade step from version 668 to version 669.
Database 'input20251' running the upgrade step from version 669 to version 670.
Database 'input20251' running the upgrade step from version 670 to version 671.
Database 'input20251' running the upgrade step from version 671 to version 672.
Database 'input20251' running the upgrade step from version 672 to version 673.
Database 'input20251' running the upgrade step from version 673 to version 674.
Database 'input20251' running the upgrade step from version 674 to version 675.
Database 'input20251' running the upgrade step from version 675 to version 676.
Database 'input20251' running the upgrade step from version 676 to version 677.
Database 'input20251' running the upgrade step from version 677 to version 679.
Database 'input20251' running the upgrade step from version 679 to version 680.
Database 'input20251' running the upgrade step from version 680 to version 681.
Database 'input20251' running the upgrade step from version 681 to version 682.
Database 'input20251' running the upgrade step from version 682 to version 683.
Database 'input20251' running the upgrade step from version 683 to version 684.
Database 'input20251' running the upgrade step from version 684 to version 685.
Database 'input20251' running the upgrade step from version 685 to version 686.
Database 'input20251' running the upgrade step from version 686 to version 687.
Database 'input20251' running the upgrade step from version 687 to version 688.
Database 'input20251' running the upgrade step from version 688 to version 689.
Database 'input20251' running the upgrade step from version 689 to version 690.
Database 'input20251' running the upgrade step from version 690 to version 691.
Database 'input20251' running the upgrade step from version 691 to version 692.
Database 'input20251' running the upgrade step from version 692 to version 693.
Database 'input20251' running the upgrade step from version 693 to version 694.
Database 'input20251' running the upgrade step from version 694 to version 695.
Database 'input20251' running the upgrade step from version 695 to version 696.
Database 'input20251' running the upgrade step from version 696 to version 697.
Database 'input20251' running the upgrade step from version 697 to version 698.
Database 'input20251' running the upgrade step from version 698 to version 699.
Database 'input20251' running the upgrade step from version 699 to version 700.
Database 'input20251' running the upgrade step from version 700 to version 701.
Database 'input20251' running the upgrade step from version 701 to version 702.
Database 'input20251' running the upgrade step from version 702 to version 703.
Database 'input20251' running the upgrade step from version 703 to version 704.
Database 'input20251' running the upgrade step from version 704 to version 705.
Database 'input20251' running the upgrade step from version 705 to version 706.
Database 'input20251' running the upgrade step from version 706 to version 770.
Database 'input20251' running the upgrade step from version 770 to version 771.
Database 'input20251' running the upgrade step from version 771 to version 772.
Database 'input20251' running the upgrade step from version 772 to version 773.
Database 'input20251' running the upgrade step from version 773 to version 774.
Database 'input20251' running the upgrade step from version 774 to version 775.
Database 'input20251' running the upgrade step from version 775 to version 776.
Database 'input20251' running the upgrade step from version 776 to version 777.
Database 'input20251' running the upgrade step from version 777 to version 778.
Database 'input20251' running the upgrade step from version 778 to version 779.
Database 'input20251' running the upgrade step from version 779 to version 780.
Database 'input20251' running the upgrade step from version 780 to version 781.
Database 'input20251' running the upgrade step from version 781 to version 782.
Database 'input20251' running the upgrade step from version 782 to version 801.
Database 'input20251' running the upgrade step from version 801 to version 802.
Database 'input20251' running the upgrade step from version 802 to version 803.
Database 'input20251' running the upgrade step from version 803 to version 804.
Database 'input20251' running the upgrade step from version 804 to version 805.
Database 'input20251' running the upgrade step from version 805 to version 806.
Database 'input20251' running the upgrade step from version 806 to version 807.
Database 'input20251' running the upgrade step from version 807 to version 808.
Database 'input20251' running the upgrade step from version 808 to version 809.
Database 'input20251' running the upgrade step from version 809 to version 810.
Database 'input20251' running the upgrade step from version 810 to version 811.
Database 'input20251' running the upgrade step from version 811 to version 812.
Database 'input20251' running the upgrade step from version 812 to version 813.
Database 'input20251' running the upgrade step from version 813 to version 814.
Database 'input20251' running the upgrade step from version 814 to version 815.
Database 'input20251' running the upgrade step from version 815 to version 816.
Database 'input20251' running the upgrade step from version 816 to version 817.
Database 'input20251' running the upgrade step from version 817 to version 818.
Database 'input20251' running the upgrade step from version 818 to version 819.
Database 'input20251' running the upgrade step from version 819 to version 820.
Database 'input20251' running the upgrade step from version 820 to version 821.
Database 'input20251' running the upgrade step from version 821 to version 822.
Database 'input20251' running the upgrade step from version 822 to version 823.
Database 'input20251' running the upgrade step from version 823 to version 824.
Database 'input20251' running the upgrade step from version 824 to version 825.
Database 'input20251' running the upgrade step from version 825 to version 826.
Database 'input20251' running the upgrade step from version 826 to version 827.
Database 'input20251' running the upgrade step from version 827 to version 828.
Database 'input20251' running the upgrade step from version 828 to version 829.
Database 'input20251' running the upgrade step from version 829 to version 830.
Database 'input20251' running the upgrade step from version 830 to version 831.
Database 'input20251' running the upgrade step from version 831 to version 832.
Database 'input20251' running the upgrade step from version 832 to version 833.
Database 'input20251' running the upgrade step from version 833 to version 834.
Database 'input20251' running the upgrade step from version 834 to version 835.
Database 'input20251' running the upgrade step from version 835 to version 836.
Database 'input20251' running the upgrade step from version 836 to version 837.
Database 'input20251' running the upgrade step from version 837 to version 838.
Database 'input20251' running the upgrade step from version 838 to version 839.
Database 'input20251' running the upgrade step from version 839 to version 840.
Database 'input20251' running the upgrade step from version 840 to version 841.
Database 'input20251' running the upgrade step from version 841 to version 842.
Database 'input20251' running the upgrade step from version 842 to version 843.
Database 'input20251' running the upgrade step from version 843 to version 844.
Database 'input20251' running the upgrade step from version 844 to version 845.
Database 'input20251' running the upgrade step from version 845 to version 846.
Database 'input20251' running the upgrade step from version 846 to version 847.
Database 'input20251' running the upgrade step from version 847 to version 848.
Database 'input20251' running the upgrade step from version 848 to version 849.
Database 'input20251' running the upgrade step from version 849 to version 850.
Database 'input20251' running the upgrade step from version 850 to version 851.
Database 'input20251' running the upgrade step from version 851 to version 852.
Database 'input20251' running the upgrade step from version 852 to version 853.
Database 'input20251' running the upgrade step from version 853 to version 854.
Database 'input20251' running the upgrade step from version 854 to version 855.
Database 'input20251' running the upgrade step from version 855 to version 856.
Database 'input20251' running the upgrade step from version 856 to version 857.
Database 'input20251' running the upgrade step from version 857 to version 858.
Database 'input20251' running the upgrade step from version 858 to version 859.
Database 'input20251' running the upgrade step from version 859 to version 860.
Database 'input20251' running the upgrade step from version 860 to version 861.
Database 'input20251' running the upgrade step from version 861 to version 862.
Database 'input20251' running the upgrade step from version 862 to version 863.
Database 'input20251' running the upgrade step from version 863 to version 864.
Database 'input20251' running the upgrade step from version 864 to version 865.
Database 'input20251' running the upgrade step from version 865 to version 866.
Database 'input20251' running the upgrade step from version 866 to version 867.
Database 'input20251' running the upgrade step from version 867 to version 868.
Database 'input20251' running the upgrade step from version 868 to version 869.
Database 'input20251' running the upgrade step from version 869 to version 875.
Database 'input20251' running the upgrade step from version 875 to version 876.
Database 'input20251' running the upgrade step from version 876 to version 877.
Database 'input20251' running the upgrade step from version 877 to version 878.
Database 'input20251' running the upgrade step from version 878 to version 879.
Database 'input20251' running the upgrade step from version 879 to version 880.
Database 'input20251' running the upgrade step from version 880 to version 881.
Database 'input20251' running the upgrade step from version 881 to version 882.
Database 'input20251' running the upgrade step from version 882 to version 883.
Database 'input20251' running the upgrade step from version 883 to version 884.
Database 'input20251' running the upgrade step from version 884 to version 885.
Database 'input20251' running the upgrade step from version 885 to version 886.
Database 'input20251' running the upgrade step from version 886 to version 887.
Database 'input20251' running the upgrade step from version 887 to version 888.
Database 'input20251' running the upgrade step from version 888 to version 889.
Database 'input20251' running the upgrade step from version 889 to version 890.
Database 'input20251' running the upgrade step from version 890 to version 891.
Database 'input20251' running the upgrade step from version 891 to version 892.
Database 'input20251' running the upgrade step from version 892 to version 893.
Database 'input20251' running the upgrade step from version 893 to version 894.
Database 'input20251' running the upgrade step from version 894 to version 895.
Database 'input20251' running the upgrade step from version 895 to version 896.
Database 'input20251' running the upgrade step from version 896 to version 897.
Database 'input20251' running the upgrade step from version 897 to version 898.
Database 'input20251' running the upgrade step from version 898 to version 899.
Database 'input20251' running the upgrade step from version 899 to version 900.
Database 'input20251' running the upgrade step from version 900 to version 901.
Database 'input20251' running the upgrade step from version 901 to version 902.
Database 'input20251' running the upgrade step from version 902 to version 903.
Database 'input20251' running the upgrade step from version 903 to version 904.
RESTORE DATABASE successfully processed 62617 pages in 0.427 seconds (1145.640 MB/sec).
1> 