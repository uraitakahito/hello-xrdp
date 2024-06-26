## How to use

Build the image:

```console
% PROJECT=$(basename `pwd`)
% docker image build -t $PROJECT-image .
```

Run docker containers:

```console
% docker container run -itd --rm --privileged -p 13389:3389 --hostname myhostname --name $PROJECT-container $PROJECT-image /sbin/init
```

## The original text

[ysenkun](https://qiita.com/ysenkun/items/fa18e263c893dc62168c)
