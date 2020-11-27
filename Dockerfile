FROM openjdk:8-jre
# 时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo Asia/Shanghai > /etc/timezone \
  && dpkg-reconfigure -f noninteractive tzdata

WORKDIR /app/bin
COPY target/app.jar ./dockerfile-starter.jar
# 日志目录
VOLUME /app/log

EXPOSE 8080

CMD ["java", "-jar", "/app/bin/dockerfile-starter.jar"]
