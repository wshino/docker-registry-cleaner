# Docker Registry Cleaner

# Usage

```bash
$ docker build -t docker-registry-cleaner .
```

```bash
$ docker run -it \
-e REGISTORY=http://172.17.0.1:5000 \
-e REPOSITORY=myfirstimage \
-e GENERATION_NUM=2 \
docker-registry-cleaner
```
