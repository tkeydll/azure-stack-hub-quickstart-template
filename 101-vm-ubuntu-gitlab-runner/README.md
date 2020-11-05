# Ubuntu for GitLab Runner

Create ubuntu server for gitlab runner.

https://docs.gitlab.com/runner/


## Usage

```bash
az group create --name demo --location [your_location]
az deployment group create --resource-group demo --template-file azuredeploy.json --parameters azuredeploy.parameters.json
```


## Custom scripts

Specify the setup script in the parameter file.

- install-gitlab-runner.sh
  - Install and register gitlab-runner.
- install-gitlab-runner-dotnet31.sh
  - Install gitlab-runner with .NET Core 3.1
