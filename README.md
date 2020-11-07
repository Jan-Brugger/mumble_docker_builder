# Docker mumble server

### first setup:

create mounted directories/files on host device

    sudo mkdir -p /opt/mumble
    sudo touch /opt/mumble/mumble-server.ini
    sudo chmod -R a+rw /opt/mumble

### run container

    docker run -d -v /opt/mumble:/var/lib/mumble-server -v /opt/mumble/mumble-server.ini:/etc/mumble-server.ini -p 64738:64738 --name mumble weltraumpenner/mumble:latest