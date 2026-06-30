# 使用 nginx 基础镜像
FROM nginx:alpine
# 创建一个简单的首页
RUN echo "<h1>Hello from Jenkins!</h1><p>Deployed on $(date)</p>" > /usr/share/nginx/html/index.html

RUN echo "Github触发测试"  > /usr/share/nginx/html/index.html
# 暴露 80 端口
EXPOSE 80
