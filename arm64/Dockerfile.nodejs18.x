FROM scratch

ADD 120176fb187501f62434ef2e3de64b28af4c794df99d59dfcf907f2a7002b95b.tar.xz /
ADD 1ae6988dd65129aa2338487bfdf25e580ef78b37341eb1b6778727b16fc44cb8.tar.xz /
ADD 3e202bd8fcfbe31ff9351fba0889f2cf5478e0031704a6d13cbe09504c19b81c.tar.xz /
ADD 58b0f7578ec0578d06c9e28c2954f362f91b3bd3a2fc81f1a43b3e475b3bd5f1.tar.xz /
ADD e5ca245878c5edbce18fb128e1c2d41b70754dc97b5b2c7d7eae96fc27e94a35.tar.xz /
ADD f2c460332686a7ce01d780c9746788ded0f2903403e7d73990554fa54788c80a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
