class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.9/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "ae3ec1a3e9586ce2be0a38a3baee6786903e0c06d22ce2b106c8fc79e13a40fc"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.9/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "12e88a65a652a4cd692c4fdd1c6ddc9fedf9a6a513e669609aeb125952857d91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.9/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df42fe20de15980271fc000201dd17bcfc3f4dded1f643d3f85389d7142b5b28"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.9/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "607d9dce5173f3c9ed0958e1a8e187f32e9c4e856f535bc04bac1c1c10245fff"
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
