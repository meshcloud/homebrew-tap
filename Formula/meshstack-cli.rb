# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.8.0/meshstack-cli_0.8.0_darwin_arm64.tar.gz"
      sha256 "8f95f440b1c935cc60bd0f0df0bd830dfe026db17af384bf5546e142471df97d"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.8.0/meshstack-cli_0.8.0_darwin_amd64.tar.gz"
      sha256 "fa9a81f47fc5c154cf4451de8baa60e52e46c24b250563f853fa885bb386d38b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.8.0/meshstack-cli_0.8.0_linux_arm64.tar.gz"
      sha256 "51eebd9009d9c95571295068667395bb30db0d6e6fccfe418516c66c19ce2f21"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.8.0/meshstack-cli_0.8.0_linux_amd64.tar.gz"
      sha256 "1038f6f943864f7239c09b93417954440e005589581a0b943a1942edd19de9f9"
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
