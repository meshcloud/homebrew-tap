# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.0/meshstack-cli_0.4.0_darwin_arm64.tar.gz"
      sha256 "5b002441521b8f91f2f9f6d89b42ee000d1b40835005b9f547482460d3d19e49"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.0/meshstack-cli_0.4.0_darwin_amd64.tar.gz"
      sha256 "701e85a8b6f96818b4a46d38a4652a3ab7f850f3c80cc2be26f87144be1d9e72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.0/meshstack-cli_0.4.0_linux_arm64.tar.gz"
      sha256 "7ea1514e912680002dfa73d77b40bddf03f1bd3f322fcf5fb9dc9db4de3a1352"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.0/meshstack-cli_0.4.0_linux_amd64.tar.gz"
      sha256 "1878c0582a5dd6d37ac2495aadb59d6db278c97b6d4172db2700369e4acfa722"
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
