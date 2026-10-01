class Cv4pveBotgram < Formula
  desc "Telegram bot for Proxmox VE: manage and monitor your cluster via Telegram"
  homepage "https://github.com/Corsinvest/cv4pve-botgram"
  version "2.0.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-botgram/releases/download/v2.0.0/cv4pve-botgram-osx-x64.zip"
      sha256 "ec8fb0310b751cd53ed9581e70564679602e4b405cf64c8f01ba21a9a2d15478"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-botgram/releases/download/v2.0.0/cv4pve-botgram-osx-arm64.zip"
      sha256 "1efda1ea04fb1d16adf19c121e23fc05024a2860b5e4eedcf4dc8039878b8c75"
    end
  end

  def install
    bin.install "cv4pve-botgram"
  end

  test do
    assert_match "cv4pve-botgram", shell_output("#{bin}/cv4pve-botgram --version")
  end
end
