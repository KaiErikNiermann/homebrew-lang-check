class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/lang-check"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.2/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "404445d8db5b3abd26367eed06328363daacd2758a764e761448a7d118ad9b0f"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.2/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "93c292db00e82a46729d2bd0a612dd58cf134fd10da2a5711a7a62229515fcba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.2/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d516e9a080a9dc9050daa9aab88652185f9f119b643fad08cbbf05cce4fe7e3"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.2/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8f371abde62f80d4a6c004e91aadccf68cab013228b1699b9f92fc8d5b6fa91"
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
