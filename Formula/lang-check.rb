class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.1/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "75779331ae8d82f3a8a2cb6ee4567263327bed29539ac7e8d0f5e4326892a442"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.1/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "a553a76a80996b83b762f531acb8c718a9be5118bf6927d6d984102bb476e9a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.1/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be83a543f05dd6fc3f4c3d72829afec97dfdfa14a1d3f5e8a1fc26b34d849264"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.1/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47408185d9aea9df0473430703a55f86393bf09a76ce9e64fbe2344ed96818c6"
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
