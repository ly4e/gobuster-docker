# gobuster-docker
An containerized gobuster for ease of use


## Example usages:
### with built in wordlists (limited)
```
docker run --rm ly4e/gobuster-container dir -w /wordlists/big.txt -u http://example.com
```

### bring your own wordlists
```
docker run --rm -v "/<path to wordlists>/seclists/Discovery/Web_Content:/wordlists" ly4e/gobuster-container -h

docker run --rm -v "/<path to wordlists>/seclists/Discovery/Web_Content:/wordlists" ly4e/gobuster-container dir -w /wordlists/big.txt -u http://example.com
```


# gobuster
Directory/file & DNS busting tool written in Go, *Reference*: https://github.com/OJ/gobuster

## inspiration(s)
https://github.com/OJ/gobuster

https://github.com/0xdevalias/docker-gobuster