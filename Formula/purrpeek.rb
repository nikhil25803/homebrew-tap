class Purrpeek < Formula
  desc "Your system information, from a cat's perspective"
  homepage "https://github.com/nikhil25803/purrpeek"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikhil25803/purrpeek/releases/download/v0.1.0/purrpeek_0.1.0_darwin_arm64.tar.gz"
      sha256 "020fa57309fdb309a6e40100b405105d63a436902f25b04915fbd337a6ad287f"
    else
      url "https://github.com/nikhil25803/purrpeek/releases/download/v0.1.0/purrpeek_0.1.0_darwin_amd64.tar.gz"
      sha256 "ac034768bc25cb7051ed6813afc50f1ee890bce7f581f6fe2b2e95e4552df7d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikhil25803/purrpeek/releases/download/v0.1.0/purrpeek_0.1.0_linux_arm64.tar.gz"
      sha256 "106d372894a3a9dc2acf4fb87afb81e7e80b434a9132c86376eae45e29094586"
    else
      url "https://github.com/nikhil25803/purrpeek/releases/download/v0.1.0/purrpeek_0.1.0_linux_amd64.tar.gz"
      sha256 "bf5a29f7148526fb3d1f3a4769feea986a5d87becd681ebe858a3a5d81244ec0"
    end
  end

  def install
    bin.install "purrpeek"
  end

  test do
    system "#{bin}/purrpeek", "--help"
  end
end
