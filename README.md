# learn-baseball-ops

0. `chmod -R +x ./scripts/*` 
1. `sudo ./scripts/install-docker.sh`
2. logout/login
3. put AWS creds:
```
mkdir ~/.aws
vim ~/.aws/credentials
```
4. Export ES_HOST to the url of Elasticsearch Service
```
export ES_HOST=https://vpc-blah-blah-blah
```
5. `./scripts/provision.sh`
