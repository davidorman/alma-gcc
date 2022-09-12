# dnsmasq contianer based on alma9

FROM almalinux/9-minimal
ENV container docker

RUN microdnf install -y dnsmasq

CMD dnsmasq -k --conf-dir=/etc/dnsmasq.d/,\*.conf
#CMD sleep infinity

#sudo docker build --rm -t isuhpc/dnsmasq .
#sudo docker run -ti  -d --rm -v -p 80:80 --name dnsmasq isuhpc/dnsmasq
#sudo docker run -ti  -v /tmp/$(mktemp -d):/run -d --rm -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 --name nginx-certbot isuhpc/nginx-certbot:py3
#sudo docker exec -ti  dnsmasq bash
