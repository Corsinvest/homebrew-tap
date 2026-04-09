class Cv4pveCli < Formula
  desc "Command-line interface for Proxmox VE — manage API calls, contexts and aliases"
  homepage "https://github.com/Corsinvest/cv4pve-cli"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-cli/releases/download/v2.2.1/cv4pve-cli-osx-x64.zip"
      sha256 "2b6020657984e1eccd54a2dd44f53a0d532813cab10f20dc134513f7a01cb60d"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-cli/releases/download/v2.2.1/cv4pve-cli-osx-arm64.zip"
      sha256 "3c7fb89f23406c8663e8f831020188b0e230748714e2eda3199bf8833b99a949"
    end
  end

  def install
    bin.install "cv4pve-cli"
  end

  test do
    assert_match "cv4pve-cli", shell_output("#{bin}/cv4pve-cli --version")
  end
end
