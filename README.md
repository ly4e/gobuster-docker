# gobuster-docker
An containerized gobuster for ease of use

dockerfile maintained (see behind the curtain) at: https://github.com/ly4e/gobuster-docker

## Example usages:
### with builtin wordlists (limited)
```
docker run --rm ly4e/gobuster-docker dir -w /wordlists/big.txt -u http://example.com

docker run --rm ly4e/gobuster-docker dir -w /wordlists/raft-medium-directories.txt -u http://example.com
```

### bring your own wordlists
```
docker run --rm -v "/<path to wordlists>/seclists/Discovery/Web_Content:/wordlists" ly4e/gobuster-docker -h

docker run --rm -v "/<path to wordlists>/seclists/Discovery/Web_Content:/wordlists" ly4e/gobuster-docker dir -w /wordlists/raft-medium-directories.txt -u http://example.com
```

#### other gobuster howto useage inforamtion can be found at the original github page: https://github.com/OJ/gobuster


---
# gobuster
Directory/file & DNS busting tool written in Go, *Reference*: https://github.com/OJ/gobuster

---
## inspiration(s)
https://github.com/OJ/gobuster

https://github.com/0xdevalias/docker-gobuster

---
### sample wordlists included by default are sourced from: 
> https://github.com/danielmiessler/SecLists/
#### included lists are as follows
* danielmiessler/SecLists/master/Discovery/Web-Content/big.txt
* danielmiessler/SecLists/master/Discovery/Web-Content/raft-medium-directories.txt
* danielmiessler/SecLists/master/Discovery/Web-Content/common.txt
* danielmiessler/SecLists/master/Discovery/DNS/subdomains-top1million-5000.txt

---
