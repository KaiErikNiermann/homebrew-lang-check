class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.1/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "c7ae5f9d9e5f65f596e075f7f95c36968e86274c6c1842736b4663a7d87dcc60"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.1/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "365af6c6ff1df1991a151a0305d432b14f72f9937c8c1d0286d20f28e1ab102f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.1/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "936ee6a13b959735724a1c34833a9bb6a4ca95ab0c1be3479a8050b5b6ca00ea"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.1/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe409295d17af9a93248c0fac64f79924e91bc94400483f85c1771d5887eac72"
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
