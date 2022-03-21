# Github Runner selfhosted



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