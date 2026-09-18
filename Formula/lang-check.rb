class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.2/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "29ba722de27fb498ec8be4ccd41d372b52d6d655ab94a9cb51a06d0286763f18"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.2/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "4bfebcbfc3e02c9d4e49f452bd7cd2f60245792642a75fa1c8e842fa3f104a33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.2/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e7a3b0f7a51b529d1298240a7d17d4fbef958cc68e6db80b7204745d57bd010"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.2/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe2b544858380d84843f70bb9e0a58b5e105ad57ee3a1f62d61d5d260f88962d"
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
