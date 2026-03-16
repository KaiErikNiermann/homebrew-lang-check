class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.3/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "ef69563d57d475c210c7a183b4a94198c436b767e1cb8aaadfa5bc2db61c89f2"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.3/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "434d3a66718c3e0b0ea419fb4c2af412bbe5d2877d2637cd899324860900ea84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.3/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f8013b1a55f154fc88c9f5408d00439796ab0dc5f2b199b90f5964004b6bc8e"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.3/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40594f4d5d01125eef09839b16a744eb6ea06d05e0bdfa70ac4f95295ba7ffb1"
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
