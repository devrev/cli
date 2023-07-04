# DevRev CLI
Official website <a href="https://devrev.ai">DevRev</a>

## Installation with Homebrew
- darwin amd64
- darwin arm64
- linux arm64
- linux amd64
### Version v0.3.2 <br>
Download the brew formula devrev.rb<br>
click here to download <a href="https://github.com/devrev/public-devrev-cli/releases/latest/download/devrev.rb">DevRev Formula</a> or run the below command
```bash
$  wget https://github.com/devrev/public-devrev-cli/releases/latest/download/devrev.rb
```
move to the downloaded directory and install the downloaded Homebrew formula devrev.rb using below brew command
```bash
$ brew install ./devrev.rb
``` 
also run the below command to install the completions
```bash
$ wget https://raw.githubusercontent.com/devrev/public-devrev-cli/main/install_completions.sh && sh install_completions.sh /opt/homebrew/bin/devrev
``` 
Note: <b>/opt/homebrew/bin/devrev</b> path may vary based on your homebrew installation
### Uninstall
```bash
$ brew uninstall devrev
```
## Installation with Debian Package
- linux amd64
- linux arm64
### Version v0.3.2 <br>
Download the debian package<br>
click here to download <a href="https://github.com/devrev/public-devrev-cli/releases/latest/download/devrev_0.3.2-linux_amd64.deb">Linux AMD64</a> 
| <a href="https://github.com/devrev/public-devrev-cli/releases/latest/download/devrev_0.3.2-linux_arm64.deb">Linux ARM64</a> <br>

Note: move to the downloaded directory and install the debian package using below dpkg command
```bash
$ sudo dpkg -i devrev_0.4.0-linux_amd64.deb
``` 
```bash
$ sudo dpkg -i devrev_0.4.0-linux_arm64.deb
``` 
Note: /usr/local/bin/devrev path may vary based on your installation
### Uninstall
```bash
$ sudo dpkg -r devrev
```
## Usage
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
