FROM scratch

ADD 120176fb187501f62434ef2e3de64b28af4c794df99d59dfcf907f2a7002b95b.tar.xz /
ADD 5a313a1920ac150539ad5ce33c0f452d7db731b81c811a735beb400b936b8d50.tar.xz /
ADD 96737ccf7cdd59ae7bc101df1bf310400aabf7ccfe66bf551f1c650b924bac37.tar.xz /
ADD a16d1b7925a04888ff2643af4df0184e2693c503e69eb82e358a1727f56732a3.tar.xz /
ADD c92818f9680f0ab8699941015eca8f6eae142932b41725d0758c66e24b55eece.tar.xz /
ADD f96cab4125bb4a26357cbaf5cb328e499bbe594778ab8ab2d161c4ea227e0e5a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
