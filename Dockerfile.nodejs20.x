FROM scratch
ADD x86_64/4491f2d25e6db156936f2f9976b2bcdb50b13e971d1b3a386049005ee8f55f90.tar.xz /
ADD x86_64/5116bbfe52ef6cdac49d6d2e739ff6317054206f5fb0694bef98298a02e9e10a.tar.xz /
ADD x86_64/621e1a8f042911f3663fedb628e728cf3e4a020da60d47a1881771e80fc164e9.tar.xz /
ADD x86_64/ce2bb69484e9a99c48e63eed14951f1df091260bd7b19d99164e57aafab4848d.tar.xz /
ADD x86_64/d7b1782a94c66cf251bc9e9e1a9f2082aecddd5f3df5445254a8881e0f35f5b6.tar.xz /
ADD x86_64/dea12ef0c9d750a965b379c66b1fe650de282c27bf8569342d87c1bcd0725530.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
