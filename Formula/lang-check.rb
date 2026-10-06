class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.2/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "12ebd2f085a9951b6c641ff0ce3e0d4fec05d3e2605d2070de48c35c0389789d"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.2/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "c6cd4417cf25881ea780cf337ad595ea627750d354e371e60d3053cdb1b29a93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.2/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49b8845a9c0c2f973dcbe588d565894f4e512094c99c07bf2a16325b2fb5b056"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.2/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0d92fc848e0f1a35c4bb9b380c9a02759c1bce4fed82e90e63a13d421e15a7c"
    end
  end

  def install
    bin.install "language-check"
    bin.install "language-check-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/language-check --version")
  end
end
