# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.9.0/meshstack-cli_0.9.0_darwin_arm64.tar.gz"
      sha256 "f421bcb4a72553c477a42bc7f29f71bb8bce796190893be8b625781119cf27e1"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.9.0/meshstack-cli_0.9.0_darwin_amd64.tar.gz"
      sha256 "d20e501e6bf1e55a66646fbf1053f6fb3a907812da9978a7e7606460b8bdcc67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.9.0/meshstack-cli_0.9.0_linux_arm64.tar.gz"
      sha256 "feb4e6e8ab9dcf54e297199ea3b6b1be2f3cfabf3b9718e60786a850cfdf8c87"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.9.0/meshstack-cli_0.9.0_linux_amd64.tar.gz"
      sha256 "812ec1d8c378c5a7d3585cd26538789d8397e76d3bfedf0c4b74c6347a9f1851"
    end
  end

  def install
    bin.install "meshstack"
    generate_completions_from_executable(bin/"meshstack", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meshstack --version")
  end
end
