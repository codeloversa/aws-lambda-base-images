FROM scratch

ADD 08277f9398e8eeb4f241a1b84565ebeee2fb921bba89baa8685b63624e2f2899.tar.xz /
ADD 120176fb187501f62434ef2e3de64b28af4c794df99d59dfcf907f2a7002b95b.tar.xz /
ADD 45d54ec7ff040f9758e6fe6e0a191229a6ef7fdbaed7d0e61c9de4717d49d6b8.tar.xz /
ADD 712acd4d86007ff53dc53245b383046770e726ec8fbd6bf4b3717c7a4a879080.tar.xz /
ADD a8098e1c2ad7e07771bc22b43613038409399e3fe1afaef98318da37d690a4a2.tar.xz /
ADD f27a865fb57efa47f8fe311502a4fd6c752af9ecd06a5eb9e880ffec3e87fd89.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
