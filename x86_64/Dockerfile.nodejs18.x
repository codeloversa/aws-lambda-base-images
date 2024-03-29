FROM scratch

ADD 1c855eb57b5d0a150f6e0b1e8f937946ef9b6821d6a8dc592bd438b3cf4afbb9.tar.xz /
ADD 61178d29e4e40bed72753c3606e9c0334bada0111b2b4b519eca643b3464a194.tar.xz /
ADD 6e3b48c12c5ac10fbc9234e9196b8734bfa3418992636ef207d0e7934214ddba.tar.xz /
ADD 80a7bc4fd7a86ac36c78a9e484b048c70721b9dda6e52416f8cd0b67f1d1f5af.tar.xz /
ADD bc17f57d2df1ad6cf6ac3af4de407d9e6a39b2e25027be60239ef740d86e5268.tar.xz /
ADD d7a5fea59bdca30ac5f919f42348f6a13be7971f59f58495bc9006ff2a968672.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
