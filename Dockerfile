FROM opensuse/tumbleweed:latest

ENV VERSION=11.3

RUN zypper install -y gcc make wget tar

VOLUME /output
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT [ "/entrypoint.sh" ]