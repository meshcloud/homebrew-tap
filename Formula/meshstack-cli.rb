# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.5.0/meshstack-cli_0.5.0_darwin_arm64.tar.gz"
      sha256 "06092b0ebc63580dba50deabc69296d9b7ad597f8204abe57113303b78fe81a5"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.5.0/meshstack-cli_0.5.0_darwin_amd64.tar.gz"
      sha256 "d7d525a9c4d3c253c883d4375d5a4bec013e75989180fa06692d34e4b93210fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.5.0/meshstack-cli_0.5.0_linux_arm64.tar.gz"
      sha256 "0deda3d8d89fa1c55541369779d96cac476dc6e66b23397777bc9acb325d8c74"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.5.0/meshstack-cli_0.5.0_linux_amd64.tar.gz"
      sha256 "001af4ec15d8c45dcde636abfab32d524ae7fd1f1b5eb8fef67e51ffcf8b53af"
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
