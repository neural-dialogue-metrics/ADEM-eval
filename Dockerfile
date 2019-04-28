FROM cgsdfc/adem-1-master:latest
MAINTAINER cgsdfc <cgsdfc@126.com>

COPY . /root/adem
RUN pip3 install Flask

EXPOSE 666

WORKDIR /root/adem
ENV FLASK_APP=server.py
ENV FLASK_ENV=development
CMD flask run
