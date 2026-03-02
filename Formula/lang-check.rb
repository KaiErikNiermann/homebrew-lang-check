class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/lang-check"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.1/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "e39158524bf80273a1a4711f1686064f1ca39c6c0321155e80f37a7386b4b2d7"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.1/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "fa611837fa265b0d4f5e09dd904e27726ecd2036e5d0e402aa630b6a7cdfc4e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.1/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a1d47402e84e2438634f643af7f3ce49bcb3dfafb71ce4a4792af4f37fd6203"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.1/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5022d6e361e6e5b2d55aaea3ccc85fe0c526f35881c0ca7fabc6df5d18f98ee"
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
