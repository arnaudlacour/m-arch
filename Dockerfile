FROM alpine
ENV JDK_VERSION="11.0.10+9"
COPY build.sh /tmp/build.sh
RUN /tmp/build.sh
ENV JAVA_HOME=/opt/java
ENV PATH="${JAVA_HOME}/bin:${PATH}"
