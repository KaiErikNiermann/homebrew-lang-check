class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/lang-check"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.1/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "077692d440cb88af32c488d0638cb4e099fdef1b57d3f681a463712c26de9c7d"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.1/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "2055d536252c349fb951699622065c6c402e723958652afad0fb21eeefd2818f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.1/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6799853aafac8d04a829a071ac1f3423182e53ffa527f3230e61af993d0c0e3f"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.1/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "629e7f4790c470927cb6a11653461b74e9705477f01811b6ece0b012917bc033"
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
