class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.2.4"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.4/cv4pve-diag-osx-x64.zip"
      sha256 "26f435d0f526329a9c64faec04e6baeae082c467057ba9cc063df2fc541349d0"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.4/cv4pve-diag-osx-arm64.zip"
      sha256 "81377a81e6f59e006d7415effd4428563c79e715fb4b95af99891492df39f6aa"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
