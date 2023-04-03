class Devrev < Formula
  desc "devrev-cli"
  homepage "https://devrev.ai"
  version "1.1.1"

  on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/devrev/brew-devrev-cli/releases/download/v1.1.1/devrev_1.1.1_Darwin_arm64.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
