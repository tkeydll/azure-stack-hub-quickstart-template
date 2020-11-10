# Windows VM with Ansible

Create windows virtual machine with ansible.

## Usage

Deploy windows server.

```bash
az group create --name demo --location [your_location]
az deployment group create --resource-group demo --template-file azuredeploy.json --parameters azuredeploy.parameters.json
```

### Setup Language (Ja-JP)

```bash
cd ansible
ansible-playbool language.yml -i hosts
```

### Setup .NET Framework SDK

```bash
cd ansible
ansible-playbool netsdk.yml -i hosts
```
