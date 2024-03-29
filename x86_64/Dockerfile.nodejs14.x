FROM scratch

ADD 3ee08d7650e5279fe2886889beaad6ac5fdb72915e2df7ad10fa4c79833d51d0.tar.xz /
ADD a7077d565092b546ca7825f8e95b2f5c46737fc940b0bf86695ecc0a61ef8f0a.tar.xz /
ADD bbb3959b8ba4e3259389a7d35c0fbc636657b093363a478ca0cc1e8c7aa2bbf4.tar.xz /
ADD bc17f57d2df1ad6cf6ac3af4de407d9e6a39b2e25027be60239ef740d86e5268.tar.xz /
ADD c65683a2aea5597ddec47fac57ad395c2ee3321de052471e91a27a5ebd88f7ab.tar.xz /
ADD ce7a2ac8f31c52d6ea8e54827bb6e4fdc1d3abe132b50d9bf403d36e790b2e2b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
