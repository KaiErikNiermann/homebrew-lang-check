class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.6/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "7f43ddf9f6bbe5a45e567b9da3cb2a309122b491308b97db3136bc53cdf81ee1"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.6/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "8ad201683fafdf0fc57371ef96eb4eab981cc80a10d39a65c0d3c3d4318e327a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.6/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1f5a76c25bfef2a9129214c4a9af1fe86723fa50b6eddaece062c7a74deb70f"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.6/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9372f75b7b232d9e0de3aaaa3a5371a71ac9b64cbb835213b596f50aaabcd481"
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
