# aliyun-cli-docker
AliCloud cli "aliyun" in a docker container. If you don't want to run pre-built binary from an non-public build process on your hackbrett. This runs the cli in a non-privileged container.

# Building
## Requirements
* make
* docker
* curl

## Docker
This will build the docker image:
```make docker```

This will run aliyun configure:
```make configure```

This will help you to make the docker image to act as aliyun cli command:
```make alias```

## Public build by aliyum
FYI: There is a build available from a public URL:

https://ci.appveyor.com/project/aliyun/aliyun-cli

I didn't check the details, but it's more transparent what's inside.

