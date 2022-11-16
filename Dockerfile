FROM yuzutech/kroki:0.18.0
WORKDIR /usr/local/kroki
COPY jlatexmath-1.0.7.jar /usr/local/kroki/jlatexmath-1.0.7.jar

ENV JAVA_OPTS="-cp /usr/local/kroki/jlatexmath-1.0.7.jar:/usr/local/kroki/kroki-server.jar -Dlogback.configurationFile=/etc/kroki/logback.xml -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory"

ENTRYPOINT ["/bin/sh", "-c", "exec java $JAVA_OPTS io.vertx.core.Launcher"]
