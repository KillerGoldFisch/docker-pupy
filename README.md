# Docker with PuPy

Run using

```sh
docker run -ti \
    -p 27066:27066 \
    -v /mypupydata:/workdir/pupy/data \
    --name pupy killergoldfisch/pupy
```
You can detach using `Ctrl+P` → `Ctrl+Q`and attach using
```sh
docker attach pupy
```

The used transport protocoll is `ssl`