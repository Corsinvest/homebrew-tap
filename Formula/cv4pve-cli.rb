class Cv4pveCli < Formula
  desc "Command-line interface for Proxmox VE — manage API calls, contexts and aliases"
  homepage "https://github.com/Corsinvest/cv4pve-cli"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-cli/releases/download/v2.3.0/cv4pve-cli-osx-x64.zip"
      sha256 "3046b043b473220d4b4e1d6ff8ab1d5b01d3806517a7d06707903e35eee9fe64"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-cli/releases/download/v2.3.0/cv4pve-cli-osx-arm64.zip"
      sha256 "f5738e8d355a2a421634e834543bc62020298a8555df5a14da32522b8d9eec30"
    end
  end

  def install
    bin.install "cv4pve-cli"
  end

  test do
    assert_match "cv4pve-cli", shell_output("#{bin}/cv4pve-cli --version")
  end
end
