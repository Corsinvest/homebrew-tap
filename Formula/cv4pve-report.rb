class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "1.8.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.8.1/cv4pve-report-osx-x64.zip"
      sha256 "f342a07f13c8b889569caf62f7b57dd1dbe17b84942c0302710c8079c5a44429"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.8.1/cv4pve-report-osx-arm64.zip"
      sha256 "0fb5a9cab1cf5cc0f6b0d2cf21be087e0c9777497930aca6bda2ded92f452de7"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
