FROM ubuntu:20.04

COPY setup.sh setup-conf.sh env.sh /
RUN /setup.sh && rm -f /setup.sh
RUN /env.sh /setup-conf.sh && rm -f /setup-conf.sh

CMD /env.sh /bin/bash
