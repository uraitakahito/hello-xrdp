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

## FYI

[How to Fix the «Configuring Remote PC…» Issue on Mac with Microsoft Remote Desktop App»](https://alexconesa.wordpress.com/2024/02/13/how-to-fix-the-configuring-remote-pc-issue-on-mac-with-microsoft-remote-desktop-app/)

## The original text

[ysenkun](https://qiita.com/ysenkun/items/fa18e263c893dc62168c)
