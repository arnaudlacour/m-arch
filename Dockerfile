FROM alpine
ENV JDK_VERSION="11.0.10+9" 
COPY "build.sh" "/tmp/build.sh"
RUN ["/tmp/build.sh"]
ENTRYPOINT ["/opt/java/bin/java"]
CMD ["-version"]
