FROM mvnfenzan/axigen:latest
RUN yum install -y telnet
EXPOSE 25 80 143 7000 9000
COPY ./axigen.cfg /var/opt/axigen/run/axigen.cfg
COPY ./setup-mv-domain.exp ./
RUN ./setup-mv-domain.exp
RUN rm ./setup-mv-domain.exp
