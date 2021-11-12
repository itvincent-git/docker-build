# 运行容器
docker run -d \
    -p 8088:80 \
    -e ENV1=aaa -e ENV2=bbb \
    itvincent/nginx-jo