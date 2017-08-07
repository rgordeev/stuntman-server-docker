FROM 2char/ubuntu:trusty

RUN apt-get install -y --no-install-recommends stuntman-server && \
    apt-get install -y --no-install-recommends stuntman-client && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3478

USER nobody

ENTRYPOINT ["/usr/sbin/stunserver"]