# 运行容器
docker run -d \
    --name nginx-jo \
    -p 8088:80 \
    -e X_ENV1=aaa -e X_ENV2=bbb \
    itvincent/nginx-jo