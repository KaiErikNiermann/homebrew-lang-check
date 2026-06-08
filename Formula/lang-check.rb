class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.4/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "ec42a33977f62f5c905491e3252ab03efc77e7874f25a816fb9fdd6972fad058"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.4/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "9c8abe84961b3d5507542f660ed2866097a73204e415aa459e423ee1e114f836"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.4/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34a5d46d39d8f25a87eab16e0182389437814d420e66090e01a233f001803e47"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.4/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91a2eb5260080bfd7041ccb1fe39a4fa407cdd3eb4be54452c99c146dbaa3b88"
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
