class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.7/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "deaba9511308dab3edcd9572f34b0d5a2a98b6a098172c5fafdc9bb67a78d90d"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.7/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "6b877bead21aef11b6990fb8cdcb88890e7f4837ae4ea325893eac436ff78045"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.7/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4934bcfc44c96e6dc9a859abc2843d445d9bc16ddc0ed7799b619ed1d9b31730"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.7/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb8987b588748898bbfb31460c647de6136f14b29d63c2fdefa43c0bdc57a023"
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
