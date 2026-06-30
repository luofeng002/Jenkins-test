# 使用 nginx 基础镜像
FROM nginx:alpine
# 创建一个简单的首页
RUN sed -i 's/listen 80;/listen 8088;/g' /etc/nginx/conf.d/default.conf

RUN echo "<h1>Hello from Jenkins!</h1><p>Deployed on $(date)</p>" > /usr/share/nginx/html/index.html
# 暴露 8088 端口
EXPOSE 8088
