FROM nginx:1.17.8-alpine

RUN mkdir /var/www && \
	mkdir /data && \
	cd /var/www && \
	wget https://github.com/mayswind/AriaNg/releases/download/1.1.4/AriaNg-1.1.4.zip && \
	unzip AriaNg-1.1.4.zip && \
	rm -f AriaNg-1.1.4.zip && \
	apk add aria2

CMD ["sh", "-c", "nginx && aria2c --enable-rpc --rpc-listen-all --rpc-allow-origin-all --rpc-secret=替换这里 --dir=/data"]
