class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.2/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "98f133bd1e715099af2cae615a44839ffae1dfdab016359049adca40f8c14a57"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.2/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "dbcc5df66f9e03e887db56fd59047c9fff1e101d19b9a15730c8995fcf341df0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.2/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3265bd2fbf6a60c89152ac0268790d5f8913b4abc74600a3c8966ba581ca47ca"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.6.2/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd5766a21557eceb9cc59e9674eaed320fb159fc2ec112f1083c72e8c4958def"
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
