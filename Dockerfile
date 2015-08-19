FROM scratch
MAINTAINER Mathias Kaufmann <me@stei.gr>
ADD / /
ENV PATH /usr/bin:/usr/sbin
RUN mkdir -p /etc/systemd/system /tmp /var/tmp
RUN systemctl mask dev-hugepages.mount tmp.mount usr-share-oem.mount systemd-machine-id-commit.service audit-rules.service

VOLUME /var/lib/docker
VOLUME /var/lib/early-docker
VOLUME /usr/share/oem

ENV container docker
ENTRYPOINT ["/usr/lib/systemd/systemd"]