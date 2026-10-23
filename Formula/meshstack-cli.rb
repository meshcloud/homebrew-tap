# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.7.0/meshstack-cli_0.7.0_darwin_arm64.tar.gz"
      sha256 "7dd65b890ef9cc0bd5b950f721d9b6fcf48a017b65d0e3cf8c0adf7911465e31"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.7.0/meshstack-cli_0.7.0_darwin_amd64.tar.gz"
      sha256 "ea92df35ed4589f3d1166bb32dd74681c6438f83c38a21933abb7468b26ba8da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.7.0/meshstack-cli_0.7.0_linux_arm64.tar.gz"
      sha256 "a35616cbae920deefcfb9570bd505a559942fbd554bf1b7d49ba34dd85c3cb5c"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.7.0/meshstack-cli_0.7.0_linux_amd64.tar.gz"
      sha256 "e20d20407fe67549aeef5ebaa2738f0e548418d8a14895338e38bfd6251505aa"
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
