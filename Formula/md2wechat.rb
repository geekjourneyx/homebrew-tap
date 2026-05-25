class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.2.1"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Darwin_arm64.tar.gz"
      sha256 "9fab481972301d46e00e1a8c71161c4592be2b9963a9328d4a52642569dbe597"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "a310d7a18a521abb44c5b6d5de194adbde1e35b14d58d2767b6a9b3eb732c8e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Linux_arm64.tar.gz"
      sha256 "6284fa6b25c79079f159f5dc6c6eeefe4f859571b44c32a007f7c5c9fae5ba61"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Linux_x86_64.tar.gz"
      sha256 "4dcc704b50f38aa59f99a595b5691afae958b5687bc0aedccb843facf223b305"
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
