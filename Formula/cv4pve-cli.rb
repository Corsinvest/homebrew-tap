class Cv4pveCli < Formula
  desc "Command-line interface for Proxmox VE: manage API calls, contexts and aliases"
  homepage "https://github.com/Corsinvest/cv4pve-cli"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-cli/releases/download/v2.4.0/cv4pve-cli-osx-x64.zip"
      sha256 "d9256909d1dfc1faefb3c6c12bd83867c8ccba16f812995e6b130609555c3417"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-cli/releases/download/v2.4.0/cv4pve-cli-osx-arm64.zip"
      sha256 "c9ee48b6e05f909380a15a5a310a9c26d1157bd973ed4fa06e53a5b1d9bc772f"
    end
  end

  def install
    bin.install "cv4pve-cli"
  end

  test do
    assert_match "cv4pve-cli", shell_output("#{bin}/cv4pve-cli --version")
  end
end
