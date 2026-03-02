class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/lang-check"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.2/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "d9306fe3ffd8632fc0e7e7d9cf152167d4fe28b7acf7b5bcbb0ce89250a82a74"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.2/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "5a9388423f6fe767a588055a47c7eb0be2ccad166b4579c748f1d8bf8a8767a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.2/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a7ec4c58df8b5e7ac5171b01bfd922e589f8eb65c19caaea0fdd0d41a219160"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.1.2/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e89d8b9ed655e6f5b0ee545d29a069b91ff5c15ce6cc5792b34a7fd8471f212"
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
