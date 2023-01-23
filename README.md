# ArgoCD CLI
Github Action to install ArgoCD CLI

## Usage
To use this action, add the following step to your GitHub Action workflow:
```yaml
- uses: codingprotocols/argocd-cli@v1
  with:
    version: v2.5.7 # Select desired TAG from https://github.com/argoproj/argo-cd/releases
- run: argocd version
```

## Authors

Created and maintained by [Ajeet Yadav](https://github.com/imAjeetYadav)
