# Github Runner selfhosted

you can build a prvate runner to execute github actions workload. 

# How to build:

With Docker : 

```bash
docker build -t . runner
```

With nerdctl

```bash
nerdctl build -t . runner
```

# How to run:



```bash
nerdctl.exe run  --env "REPO_URL=######" --env "REPO_TOKEN=############" -it runner
```

You can register a repository or an organisation with this docker image.
