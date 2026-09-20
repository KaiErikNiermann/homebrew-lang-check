class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.0/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "af1274a5e6e6b0e801f47593f74641ddd5e8eb3ad186ac96abdb2c8f59cf1192"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.0/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "6bac37e8972b008a53d258462281cc82c2877c3913d02d040a35ebd4aceed189"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.0/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2920b57a0361015cfa300930dda6d0755a5ae082bf63a13ec17fcaff64b04c09"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.0/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3914422d2af288b89b3e6e08266ff13e6613da8071ccba99856220f06c79307"
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
