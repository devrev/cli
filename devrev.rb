class Devrev < Formula
  desc "devrev-cli"
  homepage "https://devrev.ai"
  version "1.1.1"

  on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v1.1.1/devrev_1.1.1_Darwin_arm64.tar.gz"
        sha256 "91917607ad04ca64b124fb0b53811de15b83c0a6492862e3c95da9d0676618f1"
        def install
          bin.install "devrev"
        end
        test do
          assert_match "devrev version v0.3.2  
gateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7" , shell_output("devrev --version")
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v1.1.1/devrev_1.1.1_Darwin_x86_64.tar.gz"
        sha256 "b8bb6a41fbf38ae723d6aa236e0166b5613a4db75a4bad87132e9f19cf0517e8"
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
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v1.1.1/devrev_1.1.1_Linux_arm64.tar.gz"
        sha256 "63e54f288edb6c05a6fc4e7e8174a4697c7c70b431afc9b9fe64fc0db953ad2b"
        def install
          bin.install "devrev"
        end
        test do
           assert_match "devrev version v0.3.2  
gateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7" , shell_output("devrev --version")
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v1.1.1/devrev_1.1.1_Linux_x86_64.tar.gz"
        sha256 "d069bfd102a3d6fddf77a786851950055c5e737f365004c5751cb3c303b19e79"
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
