class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.1/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "b3d6ecdee6f214c01b8922348129ef567cb97c030bdf7773e5c5c8c8c820ec7c"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.1/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "29a547e019f5e3f79a89626e11e142583b77a2bbb47e577a277c9fd6bbb5cd6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.1/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5f2896cb22ffebc5ff20b77c61144040c5d6d272460d7f12c5f6b24166eba5d"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.1/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10e95c21522336e1fdbfb6d36dec19c4e7f25c460344740e9c025c1ffadc12ee"
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
