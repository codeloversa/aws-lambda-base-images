FROM scratch

ADD 2b730e1b57e55edc28d92eafcf0025ec218a231b4b215d5d2d2c2243b10d1e7d.tar.xz /
ADD 85e2bc4ddc961338b7b72d52481e234d1eee24a6b16d8e9ba53a21a62de79664.tar.xz /
ADD 8c3f2307619b97c7a4c96913ab3cb21d8b548bdb0b8f8b7ddcbbd4030109c592.tar.xz /
ADD a836e6659dcdf55fc8bfa010c6dad8b749cc4602adc4f67d4b5cfd2de729f0d0.tar.xz /
ADD aa40940b6289bbc16c6e0ead4e95069ed8155ee4abc6011d95057ca67d77e989.tar.xz /
ADD c270e81b74b082ec1c558d830be3f16267bebf332a81e1fd19b1bffd431045cf.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
