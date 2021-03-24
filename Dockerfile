FROM hseeberger/scala-sbt:8u265_1.4.3_2.13.4

COPY ./target/universal/learn-play-1.0-SNAPSHOT.zip .

RUN unzip learn-play-1.0-SNAPSHOT.zip

EXPOSE 9000

WORKDIR learn-play-1.0-SNAPSHOT

ENTRYPOINT ["./bin/learn-play", "-Dplay.http.secret.key=ad31779d4ee49d5ad5162bf1429c32e2e9933f3b"]

# docker run --name play-app -it --rm -p 9000:9000 my-app
# http POST localhost:9000/post user:='{ "name": "john", "age": 10 }'
