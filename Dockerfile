FROM ibmjava:8-sdk
WORKDIR /var/lib/gradle-test/
ADD [".", "/var/lib/gradle-test/"]
RUN chmod +x /var/lib/gradle-test/gradlew*
CMD ["/bin/bash", "-c", "set -x; /var/lib/gradle-test/gradlew --debug --stacktrace --no-daemon || ( cd $HOME/.gradle/daemon/5.2.1 && ls && cat daemon*.out.log )"]
