FROM nicolargo/glances
VOLUME /glances/conf
COPY config/glances.conf /glances/conf/glances.conf
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
