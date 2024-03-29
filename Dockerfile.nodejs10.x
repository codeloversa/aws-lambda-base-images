FROM scratch

ADD 43744026909ec70859b32b02ddcf05c8d7a5bca8aeb2fb803412ce576821fec7.tar.xz /
ADD 5d6aaebf172bfeda0e22f1de0e8b0f6bbd85c14c1191982bf538f996d0d422da.tar.xz /
ADD 99c6cde11815a8421eaf018a8e7e33028d4d17b8e803f8d4dcf719186ac4b8cf.tar.xz /
ADD a12eb26819514c5ac2172c90429a4bd181e0528ccf508aace3699fc5f7363696.tar.xz /
ADD bc17f57d2df1ad6cf6ac3af4de407d9e6a39b2e25027be60239ef740d86e5268.tar.xz /
ADD d3aacea880f87ec27444528e64adaa99a00be0b15b9393694b8c5f44fd4ba9b2.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
