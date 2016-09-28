
docker run -ti \
    -p 27066:27066 \
    -v /home/kevin/workdir/pupy/:/workdir/pupy/data \
    --name pupy killergoldfisch/pupy