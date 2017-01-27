FROM alpine:latest
RUN mkdir /tmp/webApps \
&& apk add --update python
ADD ./index.html /tmp/webApps
WORKDIR /tmp/webApps
EXPOSE 8000
CMD ["python","-m","SimpleHTTPServer","8000"]
