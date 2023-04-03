class Devrev < Formula
  desc "devrev-cli"
  homepage "https://devrev.ai"
  version "0.3.2"

  on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_0.3.2_Darwin_arm64.tar.gz"
        sha256 "cd2e448b6aaa9f84ac22c13eabe27b33fb3f9fff741241a97338c372e92c6096"
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
        sha256 "ce2f19e92adb5d72abaae0509ca86851b4e58a8f25650d44199b10230b9db63e"
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
        sha256 "697b548008e6c7e320071ea240c867d1188ca91bfad7d16611597a48088709cd"
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
        sha256 "bb7d29192875739886ec00271f543d07967d349f06a4819ac770e93b5e493580"
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
