FROM hkarhani/p3nbfsta:latest
MAINTAINER Hassan El Karhani <hkarhani@gmail.com>

WORKDIR /root
RUN wget http://interactivebrokers.github.io/downloads/twsapi_macunix.976.01.zip
RUN unzip twsapi_macunix.976.01.zip -d $HOME/ && cd ~/IBJts/source/python && python3 setup.py build install

WORKDIR /notebooks
EXPOSE 8888

CMD /bin/sh -c "/usr/bin/jupyter notebook --allow-root"
