class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.3/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "5c766151e8d0023365ed6bf0d798861019dd57625a3759b475ff9896a7369df0"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.3/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "03d303048bd98b84d6a481fbd44a8aa0a36a3f5f7990b82cfd1568cc6ec78d76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.3/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a71e4e43971dc8370dbc8332efdfac9dbbb92564b6a3d4d130c7e8a349b7e76"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.3/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b207465ad383f9d142ac268946e0d8f830e7eb80bb8c07029be4ac0a16334b9"
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
