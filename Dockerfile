# 基于java8
FROM openjdk:8-jdk-slim
# 切换到 /opt目录
WORKDIR /opt
# 将编译的jar拷贝的当前目录
ADD target/app.jar .
