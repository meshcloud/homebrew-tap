# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.1/meshstack-cli_0.4.1_darwin_arm64.tar.gz"
      sha256 "2ecb2746786d78c9f8c81fccb9f8314ec91b6b96afdf3a4a0efa6f4e26cd54e7"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.1/meshstack-cli_0.4.1_darwin_amd64.tar.gz"
      sha256 "b5c7bf944786e0efe7c67cdc5e5f3636c03520833ee35c59d93fc9fc31ca9041"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.1/meshstack-cli_0.4.1_linux_arm64.tar.gz"
      sha256 "73e8487504f97d29fecf08afd282294d066f368501b6e8f27c8baaed958ae7c3"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.4.1/meshstack-cli_0.4.1_linux_amd64.tar.gz"
      sha256 "d739eb3c79346283829431839c878c38d3dbb9e022090516c41e5e74d6715f7f"
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
