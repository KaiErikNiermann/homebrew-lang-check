class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.8/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "f5a40ffbc0cda3e3f642d7559168e06c608a05ded62df496e3c33203bf52051e"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.8/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "69c81e12556dbd5cb89cb0bf07b4a8a90ac4c4d6361ec015e4bc39d65e36a279"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.8/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f0bafe31dd0af605c750d94605c76b2fd3d808d34de91a0cd9027981b762871"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.8/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49919d1cc5cfd5d37edc4e68f910f1d92b44889960df8c5ceb3147b7e7392b07"
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
