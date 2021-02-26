FROM amazonlinux
COPY sh1.sh .
RUN chmod ugo+x sh1.sh
CMD ./sh1.sh
