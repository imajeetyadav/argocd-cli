# ArgoCD CLI GitHub Action
A GitHub Action to install the [ArgoCD CLI](https://argoproj.github.io/argo-cd/cli_installation/) on your workflow runners.

## ✨ Features
- **Multi-OS Support**: Works on `ubuntu-latest` and `macos-latest`.
- **Multi-Arch Support**: Automatically detects and installs `amd64` or `arm64` binaries.
- **Flexible Versioning**: Use `latest` or specify an exact version.

## 🚀 Usage

Add the following step to your GitHub Action workflow:

```yaml
- name: Setup ArgoCD CLI 
  uses: imajeetyadav/argocd-cli@v1
  with:
    version: v2.10.4 # optional, default is 'latest'
```

### Supported Platforms
| OS | Architecture | Status |
| :--- | :--- | :--- |
| **Linux** | `amd64`, `arm64` | ✅ Supported |
| **macOS** | `amd64`, `arm64` | ✅ Supported |

## 🛡️ Security
This action downloads official binaries directly from the [argoproj/argo-cd](https://github.com/argoproj/argo-cd/releases) repository.

## 👤 Authors
Created and maintained by [Ajeet Yadav](https://github.com/imAjeetYadav).
