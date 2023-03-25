5. ss

ss — команда для отображения информации о сетевом сокете. Команда ss аналогична устаревшей команде netstat, но является более простой и использует меньшее колчество ключей.
При запуске ss без аргументов командной строки или опций выводит полный список работающих соединений. 

Примеры использвания:
$ ss -4 state listening
Netid  Recv-Q  Send-Q        Local Address:Port            Peer Address:Port	Process        
tcp     0        128             127.0.0.1:ipp                    0.0.0.0:*                     
tcp     0        128               0.0.0.0:ssh                    0.0.0.0:*        
---------------------------------------------
$ ss -l
Netid State  Recv-Q Send-Q             Local Address:Port           Peer Address:Port Process 
nl    UNCONN 0      0                           rtnl:kernel                     *             
nl    UNCONN 768    0                           rtnl:dockerd/826                *             
nl    UNCONN 0      0                           rtnl:packagekitd/1674           *             
nl    UNCONN 0      0                           rtnl:avahi-daemon/747           *             
nl    UNCONN 0      0                           rtnl:NetworkManager/751         *             
nl    UNCONN 0      0                           rtnl:evolution-addre/2223       *
