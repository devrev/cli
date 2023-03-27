# DevRev CLI

This repo provides the latest CLI release from DevRev. It is a tool that simplifies working
with the DevRev REST API.

## Install with Debian Package

Supported architectures:

- linux amd64
- linux arm64

Download the debian package from [https://github.com/devrev/cli/releases/latest](https://github.com/devrev/cli/releases/latest)
and install it using the following command:

```bash
sudo dpkg -i devrev_0.4.0-linux_amd64.deb
```

or

```bash
sudo dpkg -i devrev_0.4.0-linux_arm64.deb
```

also run the below command to **install the completions**:

```bash
wget https://raw.githubusercontent.com/devrev/cli/main/install_completions.sh && sh install_completions.sh /usr/local/bin/devrev
```

Note: **/usr/local/bin/devrev** path may vary based on your debian installation

### Uninstall debian package

Use this command to deinstall the devrev debian package:

```bash
sudo dpkg -r devrev
```

## Installation with Homebrew

Homebrew installation supports the following architectures:

- darwin amd64
- darwin arm64
- linux arm64
- linux amd64

Download the brew formula [devrev.rb](https://github.com/devrev/cli/releases/latest/download/devrev.rb) or run the below command:

```bash
wget https://github.com/devrev/cli/releases/latest/download/devrev.rb
```

Install the downloaded Homebrew formula file devrev.rb using below command:

```bash
brew install ./devrev.rb
```

also run the below command to **install the completions**:

```bash
wget https://raw.githubusercontent.com/devrev/cli/main/install_completions.sh && sh install_completions.sh /opt/homebrew/bin/devrev
```

Note: **/opt/homebrew/bin/devrev** path may vary based on your homebrew installation

### Uninstall devrev CLI

```bash
brew uninstall devrev
```

## Usage

The DevRev CLI provides several subcommands that can be used to perform various tasks. Here are some examples:

### CLI version

```bash
devrev --version
```

### Authentication to DevRev API

```bash
devrev profiles authenticate --org <DevOrg-slug-name> --usr <your-email@example.com>
```

**Arguments:**

`<DevOrg-slug-name>` : The unique slug name of your DevOrg to which you want to login.

`<your-email@example.com>` : Your registered user email for profile.

### CLI help

```bash
devrev --help
```

### License

DevRev CLI is proprietary software and is not open source. You may use it for your commercial use, but you may not distribute or modify it without our permission.

## Support

If you have any issues or questions about DevRev CLI, please contact our support team at [https://devrev.ai](https://devrev.ai)
