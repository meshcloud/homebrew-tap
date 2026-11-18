# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.10.0/meshstack-cli_0.10.0_darwin_arm64.tar.gz"
      sha256 "64c51f01e8cdffe79c528e5dc1bdd4872944e6929680ded7a42d619e021ba277"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.10.0/meshstack-cli_0.10.0_darwin_amd64.tar.gz"
      sha256 "6e7768b8991fefd85dd6dcd9739ac795b3ee6f9599631edf69e0fc387f738e3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.10.0/meshstack-cli_0.10.0_linux_arm64.tar.gz"
      sha256 "5dcfc4919c0d97e8980a69db8c8860b952e50f49c29ad36a241002cf3f2dd94a"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.10.0/meshstack-cli_0.10.0_linux_amd64.tar.gz"
      sha256 "fcd4a5e3fd8214b6361e1ec204b770ff8285ec29442c311e8ff0edc32f4d96c7"
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
