FROM debian:12-slim
# 工作目录
WORKDIR /opt/nsfw
# 把当前目录下的所有文件拷贝到工作目录
COPY *.sh .
COPY app ./app
# 执行安装脚本
RUN bash install.sh
# 暴露端口和目录
EXPOSE 6086
# 启动命令
CMD ["bash", "run.sh"]