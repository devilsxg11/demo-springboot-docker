# 该镜像需要依赖的基础镜像
FROM dp-jdk8:0.192
# 将 targer 目录下的 jar 包复制到 docker 容器 /home/springboot 目录下面
ADD ./target/demo-springboot-docker-1.0-SNAPSHOT.jar /app/springboot/demo-springboot-docker.jar
# 声明服务运行在8080端口
EXPOSE 8080
# 执行命令
ENTRYPOINT ["java","-jar","/app/springboot/demo-springboot-docker.jar"]
# 指定维护者名称
MAINTAINER songxiaoguang
