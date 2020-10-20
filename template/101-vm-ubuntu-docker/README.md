## Ubuntu with Docker

Create ubuntu server with docker.

### Usage

```bash
az group create --name demo --location [your_location]
az deployment group create --resource-group demo --template-file azuredeploy.json --parameters azuredeploy.parameters.json
```
