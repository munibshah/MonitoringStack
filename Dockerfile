FROM telegraf:1.12.3

RUN apt-get update && apt-get install -y --no-install-recommends mtr-tiny && \
	rm -rf /var/lib/apt/lists/*

RUN printf "deb http://http.us.debian.org/debian stable main contrib non-free" > /etc/apt/sources.list
