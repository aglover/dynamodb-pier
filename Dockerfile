FROM aglover/java8-pier
MAINTAINER Andy Glover "ajglover@gmail.com"

RUN apt-get update -y
RUN apt-get install wget -y

RUN wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest -O dynamo.tar.gz
RUN tar xvzf dynamo.tar.gz && mv dynamodb_local_* dynamodb_local

EXPOSE 8000

CMD ["java", "-Djava.library.path=./dynamodb_local/DynamoDBLocal_lib", "-jar", "./dynamodb_local/DynamoDBLocal.jar"]
