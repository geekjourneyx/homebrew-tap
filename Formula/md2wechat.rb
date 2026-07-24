class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.2.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.2.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "fa1e8c7955e825db3bf409a2fc573fe0a2cc8ed93c3c11cecce948602d6e61b0"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.2.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "1e8496ebe6e9bb08adfd6deb84e2c7df929edb7ecab975b9e741b6b6c66297d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.2.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "619e165402ddfc7524ef2e79beb9f0f6695bc263b6115d554efe42a05ce68e83"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.2.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "7eb267dafbfe96c1bb4c2a7fe0198e8aef6656b4fa27e59cc1ece1925f5fde58"
    end
  end

  def install
    bin.install "md2wechat"
  end

  test do
    require "json"

    payload = JSON.parse(shell_output("#{bin}/md2wechat version --json"))
    assert_equal version.to_s, payload.fetch("data").fetch("version")
  end
end
