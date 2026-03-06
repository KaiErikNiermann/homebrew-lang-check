class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.2/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "d09a092d7645517802142280c092f43f7bfdfaa5cd89e3b0bd3bd47f8007b588"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.2/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "9d5f5df13d7ce1f6a1717caec129a1daac47693577f55d7298bbefdcaf6d53c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.2/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa358bc407f37ea8fa56e5dc2248f19954bc537c04d1387bda0ddc7a48812a4a"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.2/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "245e9e42494773c19c39733d7c507a5cd2346dcfa8ca8c30b557ef773db28709"
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
