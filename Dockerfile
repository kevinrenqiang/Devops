FROM docker:latest

# 安装其他必要的工具
RUN apk update && \
    apk add --no-cache curl bash

# 设置docker命令别名以方便使用
RUN echo 'alias docker="docker --config /root/.docker"' >> ~/.bashrc

# 添加一个非特权用户（可选）
RUN adduser -D user
USER user

# 设置工作目录（可选）
WORKDIR /home/user

# 设置入口命令，以保持容器运行
CMD ["bash"]
