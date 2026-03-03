class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.3/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "2ba56d8557aa14794ab4335ab86533570d6c5fc341feb1d56360c7e0258cc32f"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.3/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "c810c434b6e592fd00019301b3d8fae08f0b185fe509fded9ab8c8b8fce113c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.3/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0bfb62fa82ce0e9d9a6f898dcf517ca8525781ab50337778e7bcda3fafe09e8a"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.3/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "037d70f26f0f126e98fc7532c9b00ded614215dd637d34d1bfd39fd173996796"
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
