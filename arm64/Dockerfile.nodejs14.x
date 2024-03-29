FROM scratch

ADD 120176fb187501f62434ef2e3de64b28af4c794df99d59dfcf907f2a7002b95b.tar.xz /
ADD 1d97b864fe67c52fe69ceca47c15056853dd5a8cd9f6a9c94d8024d88133dd7e.tar.xz /
ADD 2cb243beab470f04a0eadd3b3e3a061b017816dca3ab6aaa0304344de436d529.tar.xz /
ADD 6d94198776c37dbc8e3235871f03ed0a6745f3a8733328f5699ca80d77e5a9de.tar.xz /
ADD d018e3bed59049b56ef15eee6f94048b719b099857d6b1408afc4ea7d535f8fc.tar.xz /
ADD d59bc7ba7fb65dc0e198db451dfff64384baddd30e310c2dc75f4a57c9b17d46.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
