## How to run?

**rkt**:
`$ sudo rkt run --insecure-options=image --port 80-tcp:8080 --volume data,kind=host,source="$PWD",readOnly=true akhal3d/darkhttpd:1.12 --mount volume=data,target=/var/www/ --name darkhttpd`

**docker**: `docker run --rm -p 8080:80 -v "$PWD:/var/www" --name darkhttpd akhal3d/darkhttpd:1.12`