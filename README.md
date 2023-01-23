# ArgoCD CLI
Github Action to install ArgoCD CLI

## Usage
To use this action, add the following step to your GitHub Action workflow:

### Select desired version from https://github.com/argoproj/argo-cd/releases

```yaml
- uses: codingprotocols/argocd-cli@v1
  with:
    version: v2.5.7 # optional 
- run: argocd version
```

## Authors

Created and maintained by [Ajeet Yadav](https://github.com/imAjeetYadav)
