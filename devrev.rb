class Devrev < Formula
  desc "devrev-cli"
  homepage "https://devrev.ai"
  version "0.3.2"

  on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_0.3.2_Darwin_arm64.tar.gz"
        sha256 "c53d458bb37c65a01f156461d6b36cb0ea30a664bec9072e8b6baab5b3b98ad3"
        def install
          bin.install "devrev"
        end
        test do
          assert_match "devrev version v0.3.2  
gateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7" , shell_output("devrev --version")
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_0.3.2_Darwin_x86_64.tar.gz"
        sha256 "ed87298ac2af8167c5a623b9afc91a7da21a48125a27852e1fa10f8e8ba1b35c"
        def install
          bin.install "devrev"
        end
        test do
           assert_match "devrev version v0.3.2  
gateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7" , shell_output("devrev --version")
        end
      end
    end
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_0.3.2_Linux_arm64.tar.gz"
        sha256 "80b6351ea35a3ec861d0454f3f40dd83e446f38466d17da247b89504af4b2f2b"
        def install
          bin.install "devrev"
        end
        test do
           assert_match "devrev version v0.3.2  
gateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7" , shell_output("devrev --version")
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_0.3.2_Linux_x86_64.tar.gz"
        sha256 "9a79c74b8a8a0b4ec9a9d8c86b409efd40d303a6ac8f02c069e4dfd10f0ea523"
        def install
          bin.install "devrev"
        end
        test do
          assert_match "devrev version v0.3.2  
gateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7" , shell_output("devrev --version")
        end
      end
    end
  end
