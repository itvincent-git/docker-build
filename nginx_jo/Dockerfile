# https://github.com/nginxinc/docker-nginx/blob/d496baf859613adfe391ca8e7615cc7ec7966621/mainline/alpine/Dockerfile
FROM nginx
# install https://github.com/jpmens/jo to JSON output from a shell
# Handle JSON in shell : https://medium.com/swlh/different-ways-to-handle-json-in-a-linux-shell-81183bc2c9bc , https://jpmens.net/2016/03/05/a-shell-command-to-create-json-jo/
RUN apt-get update \
  && apt-get install jo
# copy env2json.sh and run create json
WORKDIR /usr/share/nginx/html
COPY env2json.sh .
CMD ["sh", "/usr/share/nginx/html/env2json.sh"]