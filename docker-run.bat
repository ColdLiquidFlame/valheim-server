docker run -d ^
    --name valheim-server ^
    --cap-add=sys_nice ^
    --stop-timeout 120 ^
    -p 2456:2456/udp ^
    -p 2457:2457/udp ^
    -v C:\Users\ColdL\source\repos\valheim-dedicated-server\config:/config ^
    -v C:\Users\ColdL\source\repos\valheim-dedicated-server\data:/opt/valheim ^
    -e SERVER_NAME="Lumberjacks" ^
    -e WORLD_NAME="TreeChoppers" ^
    -e SERVER_PASS="secret" ^
    -e SERVER_ARGS="-crossplay" ^
    lloesche/valheim-server
