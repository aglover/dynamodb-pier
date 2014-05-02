# Local DynamoDB Docker Instance 

Runs [AWS DynamoDB local](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html) as a [Docker image](https://www.docker.io/). 

## Usage

Pull it.

``` bash
$ docker pull aglover/dynamodb-pier
```

Then run it.

``` bash
$ docker run --name local-dynamodb -d aglover/dynamodb-pier
```

Note, by default, dynamodb-pier is running on port 8000.

## Details

Docker image is based off of Ubuntu and [my Java 8 image](https://github.com/aglover/java8-pier).

See the dynamo-pier [docker index](https://index.docker.io/u/aglover/dynamodb-pier/) for more details. 