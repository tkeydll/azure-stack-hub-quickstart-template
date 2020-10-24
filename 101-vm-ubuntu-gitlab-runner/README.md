# Ubuntu for GitLab Runner

Create ubuntu server for gitlab runner.

https://docs.gitlab.com/runner/


## Usage

```bash
az group create --name demo --location [your_location]
az deployment group create --resource-group demo --template-file azuredeploy.json --parameters azuredeploy.parameters.json
```
