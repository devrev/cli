class Devrev < Formula
  desc "The missing man pages for Go binaries"
  homepage "https://devrev.ai"
  version "1.0.1"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SathishKumarHS/darwin-devrev/releases/download/v1.0.1/devrev_1.0.3Darwin_arm64.tar.gz"
      sha256 "ab28e4476c6835b71dc67255bab811d72cdbe2aade7fa6f8f10e6dd71d1a34bf"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2  \ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/SathishKumarHS/darwin-devrev/releases/download/v1.0.1/devrev_1.0.3Darwin_x86_64.tar.gz"
      sha256 "c0b7e4024a80a37921e6ef029dba130286a0e039c512cfca8f8f7b8d1a5680ce"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2  \ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/SathishKumarHS/darwin-devrev/releases/download/v1.0.1/devrev_1.0.3Linux_arm64.tar.gz"
      sha256 "3b4225e6177335c6956e8103950a157c44c4db6e01cd6ad5343d9e4b5c8bd132"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2  \ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/SathishKumarHS/darwin-devrev/releases/download/v1.0.1/devrev_1.0.3Linux_x86_64.tar.gz"
      sha256 "5aba068a5737038f20a2556747d56535d4c3d9d11955032099a0b4e6ad014d78"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2  \ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
  end
end
