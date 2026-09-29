# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.2.1/meshstack-cli_0.2.1_darwin_arm64.tar.gz"
      sha256 "d3b30bdc2326b02a00f62dc1eaea7e4036932737f712e55986126c0e20133084"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.2.1/meshstack-cli_0.2.1_darwin_amd64.tar.gz"
      sha256 "261c3f8d9009452e5abd374882a5e16643e4ba0ca301c32bbd72c8bedb2b8f0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.2.1/meshstack-cli_0.2.1_linux_arm64.tar.gz"
      sha256 "f22fe25aabdbab24e785944b4e9e16ff8aa90f8c597f9874280cdff931db8b92"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.2.1/meshstack-cli_0.2.1_linux_amd64.tar.gz"
      sha256 "e6c20546e4a5555bd070c4f977b635bb3698e520867dcec9269172f0bacfef99"
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
