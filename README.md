docker hub rate limit test
===

## init

````bash
export LOGIN=monlogin
export PASSWORD=monpass

./test-rates-limit.sh
````

In the config.yaml, please to set this :

```yaml
proxy:
  remoteurl: https://registry-1.docker.io
  username: login
  password: password
```

