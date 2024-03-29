FROM scratch

ADD 40909f9ad21bb0a6328b3187b7e126de656f562746ee2ebacc03ea04083e46d5.tar.xz /
ADD 7f12201dcedad547071a549de3caeb174628effefbd10f13499e87bafbc64177.tar.xz /
ADD 8fa6e620268ab56d0718e4079052227eb3a5e887f1c429fb75a88ed5c04f6659.tar.xz /
ADD a98beb259c9ef58a00df7fe8f465a56ed4eadc5e7c5f5d8298b6076e6cd37a1c.tar.xz /
ADD e69b1169a0f39367a02238a458331dd93125d507a583cc4e9249dea8971b405c.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
