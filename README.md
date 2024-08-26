
## Clone
```shell
git clone https://github.com/Gonkers/AdGuardHome.git
```

## Build
```shell
docker build --tag adguard .
```

## Run
```shell
docker run --name adguardhome  \
    --restart always  \
    -v ./adguard/work:/opt/adguardhome/work  \
    -v ./adguard/conf:/opt/adguardhome/conf  \
    -v ./unbound:/etc/unbound  \
    -p 53:53/tcp -p 53:53/udp  \
    -p 80:80/tcp -p 443:443/tcp -p 443:443/udp -p 3000:3000/tcp  \
    -p 853:853/tcp  \
    -p 784:784/udp -p 853:853/udp -p 8853:8853/udp  \
    -p 5443:5443/tcp -p 5443:5443/udp  \
    -d adguard
```

## Configure AdGuard Upstream DNS Servers
* Go to http://localhost:3000 to do the initial AdGuard Home setup
* Use the AdGuard portal to use unbound
  * Use `127.0.0.1:5300` for both the "Upstream" and "Bootstrap" DNS servers
