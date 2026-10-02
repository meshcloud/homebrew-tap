# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.3.0/meshstack-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "ab63d81582cdf3217f39e4fd5f91040ed08b7dc25ed8c688da888985404fa0be"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.3.0/meshstack-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "7afb3e3519790bdcece5cbf57c1b53c088c067b836cc9ab3d7dc324f46dd769f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.3.0/meshstack-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "d13ee3aa8e4c409b4458aec12605d28a8620b3f07967aaa95c93e0ea175436ab"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.3.0/meshstack-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "77d1a08b22b8c57b458bfc556fd50bb531b1041d9a7032075bf169bca242c37e"
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
