# 使用 nginx 基础镜像
FROM nginx:alpine
# 创建一个简单的首页
RUN echo "<h1>Hello from Jenkins HHHHHHHH !</h1><p>Deployed on $(date)</p>" > /usr/share/nginx/html/index.html
#
RUN echo "Github Trigger Test yes yes"  > /usr/share/nginx/html/github-test.html
#Jenkins 页面
RUN  echo "<h1>Jenkins Build</h1>" > /usr/share/nginx/html/jenkins.html
# 暴露 80 端口
EXPOSE 80
