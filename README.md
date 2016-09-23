# Docker Registory Cleaner

# Usage

```bash
$ docker build -t docker-registory-cleaner .
```

```bash
$ docker run -it \
-e REGISTORY=http://172.17.0.1:5000 \
-e REPOSITORY=myfirstimage \
-e GENERATION_NUM=2 \
docker-registory-cleaner
```
