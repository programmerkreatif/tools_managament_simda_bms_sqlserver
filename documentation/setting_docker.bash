tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ ls
backup_db  index.php  instalasi_koneksi.bash  README.bash
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker ps -a 
CONTAINER ID   IMAGE                                        COMMAND                  CREATED          STATUS                  PORTS                                       NAMES
79f472d4eaf7   mcr.microsoft.com/mssql/server:2019-latest   "/opt/mssql/bin/perm…"   18 minutes ago   Up 18 minutes           0.0.0.0:1433->1433/tcp, :::1433->1433/tcp   mssql2019
c7d237681796   mcr.microsoft.com/mssql/server:2019-latest   "/opt/mssql/bin/perm…"   2 days ago       Exited (0) 2 days ago                                               sqlserver
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker rm sqlserver
sqlserver
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker ps -a
CONTAINER ID   IMAGE                                        COMMAND                  CREATED          STATUS          PORTS                                       NAMES
79f472d4eaf7   mcr.microsoft.com/mssql/server:2019-latest   "/opt/mssql/bin/perm…"   19 minutes ago   Up 19 minutes   0.0.0.0:1433->1433/tcp, :::1433->1433/tcp   mssql2019
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker inspect mssql2019 | grep -A5 Mounts
        "Mounts": [],
        "Config": {
            "Hostname": "79f472d4eaf7",
            "Domainname": "",
            "User": "mssql",
            "AttachStdin": false,
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker stop mssql2019
mssql2019
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker volume create mssql_data
mssql_data
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker volume ls
DRIVER    VOLUME NAME
local     mssql_data
local     sqlserver_data
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker inspect mssql2019 | grep Source -n
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker run --rm \
  -v mssql_data:/var/opt/mssql \
  -v /var/lib/docker/containers:/containers \
  alpine sh -c "ls /var/opt/mssql"
Unable to find image 'alpine:latest' locally
latest: Pulling from library/alpine
1074353eec0d: Pull complete 
Digest: sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62
Status: Downloaded newer image for alpine:latest
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker rm mssql2019
mssql2019
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker run -d \
  --name mssql2019 \
  --restart unless-stopped \
  -e "ACCEPT_EULA=Y" \
  -e "SA_PASSWORD=PasswordStrong123!" \
  -p 1433:1433 \
  -v mssql_data:/var/opt/mssql \
  mcr.microsoft.com/mssql/server:2019-latest
1f5db738099739a28a720585e30c5c4ebdac9b89f4b14f02da28d1b5d97d1092
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker inspect mssql2019 | grep -A5 Mounts
        "Mounts": [
            {
                "Type": "volume",
                "Name": "mssql_data",
                "Source": "/var/lib/docker/volumes/mssql_data/_data",
                "Destination": "/var/opt/mssql",
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sqlcmd -S 127.0.0.1,1433 -U sa -P "PasswordStrong123!"
1> 



################################################################
Restore Database
################################################################


tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker exec -it mssql2019 bash
mssql@1f5db7380997:/$ mkdir -p /var/opt/mssql/backup
mssql@1f5db7380997:/$ exit
exit
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker cp /home/tommy/Downloads/input20251.bak \
mssql2019:/var/opt/mssql/backup/input20251.bak
Successfully copied 513MB to mssql2019:/var/opt/mssql/backup/input20251.bak
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker exec -it mssql2019 ls -lh /var/opt/mssql/backup
total 490M
-rw-rw-rw- 1 1000 1000 490M Mar 20  2022 input20251.bak
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sqlcmd -S 127.0.0.1,1433 -U sa -P "PasswordStrong123!"
1> RESTORE FILELISTONLY
2> FROM DISK = '/var/opt/mssql/backup/input20251.bak';
3> GO
LogicalName                                                                                                                      PhysicalName                                                                                                                                                                                                                                                         Type FileGroupName                                                                                                                    Size                 MaxSize              FileId               CreateLSN                   DropLSN                     UniqueId                             ReadOnlyLSN                 ReadWriteLSN                BackupSizeInBytes    SourceBlockSize FileGroupId LogGroupGUID                         DifferentialBaseLSN         DifferentialBaseGUID                 IsReadOnly IsPresent TDEThumbprint                              SnapshotUrl                                                                                                                                                                                                                                                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---- -------------------------------------------------------------------------------------------------------------------------------- -------------------- -------------------- -------------------- --------------------------- --------------------------- ------------------------------------ --------------------------- --------------------------- -------------------- --------------- ----------- ------------------------------------ --------------------------- ------------------------------------ ---------- --------- ------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
BMDv1_Data                                                                                                                       C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BMD20230k.mdf                                                                                                                                                                                D    PRIMARY                                                                                                                                     528416768       35184372080640                    1                           0                           0 00000000-0000-0000-0000-000000000000                           0                           0            512950272             512           1 NULL                                        34934000000005600122 063F2906-0F47-4E94-8BAB-80F7F6D87B26          0         1 NULL                                       NULL                                                                                                                                                                                                                                                                                                                                            
BMDv1_Log                                                                                                                        C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BMD20230k_1.ldf                                                                                                                                                                              L    NULL                                                                                                                                          1048576       35184372080640                    2                           0                           0 00000000-0000-0000-0000-000000000000                           0                           0                    0             512           0 NULL                                                           0 00000000-0000-0000-0000-000000000000          0         1 NULL                                       NULL                                                                                                                                                                                                                                                                                                                                            

(2 rows affected)
1> RESTORE DATABASE input20251
2> FROM DISK = '/var/opt/mssql/backup/input20251.bak'
3> WITH
4> MOVE 'BMDv1_Data' TO '/var/opt/mssql/data/input20251.mdf',
5> MOVE 'BMDv1_Log'  TO '/var/opt/mssql/data/input20251_log.ldf',
6> REPLACE;
7> GO
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
RESTORE DATABASE successfully processed 62617 pages in 0.485 seconds (1008.636 MB/sec).
1> 

tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ sudo systemctl enable docker
sudo systemctl start docker
[sudo] password for tommy: 
Synchronizing state of docker.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
Executing: /usr/lib/systemd/systemd-sysv-install enable docker
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ docker inspect mssql2019 | grep RestartPolicy -A3
            "RestartPolicy": {
                "Name": "unless-stopped",
                "MaximumRetryCount": 0
            },
tommy@tommy:~/www_docs/php82/tools_managament_simda_bms_sqlserver$ 
