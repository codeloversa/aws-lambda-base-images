FROM scratch
ADD x86_64/4b4c97b5170bd2e4c7feea3d1aa4a946f784bd52818067057690e4d73501c1ef.tar.xz /
ADD x86_64/56635f002899305b0126d40a68546f46350b650368fa12822cf9d09fa55a4595.tar.xz /
ADD x86_64/a94eb82d2834aaeade8472750213576c91ad320bae939876fd0f741021ab2178.tar.xz /
ADD x86_64/bc17f57d2df1ad6cf6ac3af4de407d9e6a39b2e25027be60239ef740d86e5268.tar.xz /
ADD x86_64/ce9b2f84fd76e0b679140713fc2624363e2f3829e5fd8e76f2dcc7949de6c21f.tar.xz /
ADD x86_64/f44e71074fad20b100132cc27b51f321535badd3dfc2d5825f63212de84c73fe.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
