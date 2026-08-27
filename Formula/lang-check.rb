class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.0/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "19d850e67cfee393882fc9c9d3553e5e1b9fb3affcc1198b7737db43915bd7d9"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.0/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "2f5c22fedddcd7c2cbefc21687efa6a9ded233ebb19626322c71d6c0509b45e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.0/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bed5a70f5f98ec4340b7cd0d24f2b0e2d72c8c3862199927c8a36ca75695dbfd"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.5.0/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac6f65492ae2584c72d5e0fe9ceafc18065c32b356e59a0b509e09c52249bdc0"
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
