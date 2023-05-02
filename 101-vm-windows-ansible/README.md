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
ansible-playbook language.yml -i hosts
```

### Setup .NET Framework SDK

```bash
cd ansible
ansible-playbook netsdk.yml -i hosts
```

### Setup Multi Platform Server

Install ASP.NET 5, node.js, Ruby on Rails, Go, Python.

```bash
cd ansible
ansible-playbook platform.yml -i hosts
```
