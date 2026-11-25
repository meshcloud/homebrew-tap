# Written by the release workflow of meshcloud/meshstack-cli on every release, which overwrites any
# change made here.
class MeshstackCli < Formula
  desc "Command-line interface for meshStack"
  homepage "https://github.com/meshcloud/meshstack-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.11.0/meshstack-cli_0.11.0_darwin_arm64.tar.gz"
      sha256 "7c5e8b24daee84ae27d7f77e2e5e308e62c6de602792339c6018f6f25ea64610"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.11.0/meshstack-cli_0.11.0_darwin_amd64.tar.gz"
      sha256 "7f5cbbe5189fc4fc66588a53307c4b1e384f71e879082d36ea4b635c03891c0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.11.0/meshstack-cli_0.11.0_linux_arm64.tar.gz"
      sha256 "7f742e3f6cc732d1c8db8689cbb904c0227dd02ec91e790c654567498f4fe410"
    end
    on_intel do
      url "https://github.com/meshcloud/meshstack-cli/releases/download/v0.11.0/meshstack-cli_0.11.0_linux_amd64.tar.gz"
      sha256 "8185479c934f564cdb974ec56e550d4dd254b0f40d1ffd8d2dc4e127fa91cac4"
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
