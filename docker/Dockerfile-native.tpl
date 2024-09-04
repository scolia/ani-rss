FROM alpine:edge
COPY target/ani-rss /usr/app/ani-rss
COPY docker/run.sh /run.sh
WORKDIR /usr/app
VOLUME /config
RUN chmod +x /run.sh
RUN ls / -al
ENV PORT="7789"
ENV CONFIG="/config"
ENV TZ="Asia/Shanghai"
ENV PUID=0 PGID=0 UMASK=022
EXPOSE 7789
CMD ["bash","/run.sh"]
