# 使用官方的Java开发环境镜像作为基础镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 将本地的HelloWorld.java文件复制到容器中
COPY HelloWorld.java .

# 编译Java程序
RUN javac HelloWorld.java

# 暴露端口（虽然在这个例子中不需要，但可以作为一个习惯）
EXPOSE 8080

# 设置默认命令
CMD ["java", "HelloWorld"]