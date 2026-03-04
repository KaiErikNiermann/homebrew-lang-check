class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.1/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "44f78cce9955c5f20be111ed940b7f7db8e8a267f22ccef66bdfcebeca781058"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.1/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "618187e567cbe2be7bd766b230acff1dc9e83b892185724ef62999cdf3fa3d6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.1/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91354df895a4b44645afa57ccde30b9df704113aae404da6c80c3aea9246643b"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.1/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2321ffba7a7276c7313f2bb738e8c13a52f0b6437d5877a62fd35940eaadcb56"
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
