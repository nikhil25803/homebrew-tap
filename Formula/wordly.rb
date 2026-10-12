class Wordly < Formula
  desc "One shared Wordle every UTC day, played entirely in your terminal"
  homepage "https://github.com/nikhil25803/wordly"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikhil25803/wordly/releases/download/v1.0.0/wordly_darwin_arm64.tar.gz"
      sha256 "b7fb55c58503d62df00564064194411312111bca7df7c631e955d8e7e8f1cea5"
    else
      url "https://github.com/nikhil25803/wordly/releases/download/v1.0.0/wordly_darwin_amd64.tar.gz"
      sha256 "886e246ff6135bd7ca45c9af78d3c1237829fdac5aa83ec64ba4eeddb70b1e14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikhil25803/wordly/releases/download/v1.0.0/wordly_linux_arm64.tar.gz"
      sha256 "492c7fd99a4c7b82941c829009dae57177f0f16cb001db6feafb6432898c5eb8"
    else
      url "https://github.com/nikhil25803/wordly/releases/download/v1.0.0/wordly_linux_amd64.tar.gz"
      sha256 "1ddd5d69103be98790d040760b1bba6fc4bee05e247b167b0f892aa9b6eca424"
    end
  end

  def install
    bin.install "wordly"
  end

  test do
    system bin/"wordly", "--help"
  end
end
