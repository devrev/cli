class Devrev < Formula
  desc "devrev-cli"
  homepage "https://devrev.ai"
  version "0.3.2"

  on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_0.3.2_Darwin_arm64.tar.gz"
        sha256 "b2905b516042ff82fd165c3dab0817db469a2687a9ba6cd231f314edda300541"
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
        sha256 "161d787d881a1a2d4816f5882ab8aee4af69ee2d3bb8949d5cca4c58c77f35a8"
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
        sha256 "27e864ab74ad0a4c944315c3081a3181386c4d0586cd1f76826e9a43b99c22a7"
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
        sha256 "234214f73d85821064d0229bd6d4ccb826741d2f4d5ea683355e3e167b82e248"
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
