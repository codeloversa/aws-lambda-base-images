FROM scratch

ADD 548cb13afad1e8c1376be5921741f348014327dfd0d153673944bab7b9152781.tar.xz /
ADD 9650bd92e86110d156c4dcef01bf11932f8496c146439f02e6d25e2d5bf8736c.tar.xz /
ADD 9b781d688f64924ebd21596df483be311d875cc05b9c2b53e168ee609cea93d8.tar.xz /
ADD bc17f57d2df1ad6cf6ac3af4de407d9e6a39b2e25027be60239ef740d86e5268.tar.xz /
ADD f7842a877ce5f51ce6f34b7d495a1cc0ddb056403563e70c96fd57ecd38a95c9.tar.xz /
ADD ffc6899ef460bad6485840f5f996833b9fb288ff7300f1c074276efa8e3902f1.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
