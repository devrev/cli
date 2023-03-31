class Devrev < Formula
  desc "devrev-cli"
  homepage "https://devrev.ai"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_Darwin_arm64.tar.gz"
      sha256 "0ba843f23a9fcc56aee5dd8b9a8296049e01e5fa8fb77f51be909b867564bfc7"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2 75ee4332d9968e20f5ab5566231f3c3216068d9d 2023-03-28T07:42:49Z\ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_Darwin_x86_64.tar.gz"
      sha256 "5e52a79e09727a5bbc4af893b0fb029a7ac6fccab1810084a24ebea80f08cdcd"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2 75ee4332d9968e20f5ab5566231f3c3216068d9d 2023-03-28T07:42:49Z  \ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_Linux_arm64.tar.gz"
      sha256 "ebcc0d375a4499098779e42fab8dbac95b5fdd3f7d8119c4a0e396b211de9491"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2 75ee4332d9968e20f5ab5566231f3c3216068d9d 2023-03-28T07:42:49Z  \ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/devrev/brew-devrev-cli/releases/download/v0.3.2/devrev_Linux_x86_64.tar.gz"
      sha256 "2933ca54af5e03251b8ff831dcf8e4243bab88aa3fdc7e3d5fa07958b5ef7007"

      def install
        bin.install "devrev"
      end
      test do
         assert_match "devrev version v0.3.2 75ee4332d9968e20f5ab5566231f3c3216068d9d 2023-03-28T07:42:49Z  \ngateway version 2e39352305a8596ba6a8e78707be80d7e4abcde7", shell_output("devrev --version")
      end
    end
  end
end
