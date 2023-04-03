# DevRev CLI
Official website <a href="https://devrev.ai">DevRev</a>

### Installation
Firstly, download devrev.rb file
```
$  curl -O https://raw.githubusercontent.com/devrev/brew-devrev-cli/main/devrev.rb
```
Install the downloaded brew formula devrev.rb
```bash
$ brew install ./devrev.rb
``` 
### Uninstall
```bash
$ brew uninstall devrev
``` 
### Usage
The DevRev CLI provides several subcommands that can be used to perform various tasks. Here are some examples:

### devrev version
```bash
$ devrev --version
```

### Authenticate

```bash
$ devrev profiles authenticate --org <DevOrg-slug-name> --usr <your-email@example.com>
``` 
**Arguments:**

`<DevOrg-slug-name>` : The unique slug name of your DevOrg to which you want to login.

`<your-email@example.com>` : Your registered user email for profile.

### Help regarding CLI
```bash
$ devrev --help
```

### License

DevRev CLI is proprietary software and is not open source. You may use it for your commercial use, but you may not distribute or modify it without our permission.

## Support
If you have any issues or questions about DevRev CLI, please contact our support team at <a href="https://devrev.ai">DevRev</a>
