FROM java:7
ENV FOO bar

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN touch test.txt
RUN javac -d bin src/HelloWorld.java
RUN apt-get install git

RUN pwd

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
