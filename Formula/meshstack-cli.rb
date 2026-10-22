# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.6.0/meshstack-cli_0.6.0_darwin_arm64.tar.gz"
      sha256 "430d8c2100b9a58c4c9d46214ce30264d53d2400458f446eccd25a1118f9a747"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.6.0/meshstack-cli_0.6.0_darwin_amd64.tar.gz"
      sha256 "214560552571358334407b08112ff4e4fe45f4a8214f86c59828e2a6de758605"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.6.0/meshstack-cli_0.6.0_linux_arm64.tar.gz"
      sha256 "f298806a2653e5b05263eb606df5b76e83619d788204c9f9547055732d0724c8"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.6.0/meshstack-cli_0.6.0_linux_amd64.tar.gz"
      sha256 "f8cbf80f10eb9dce37ce8151f81589262fd28232d8bc89ff8e085fc93710511d"
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
