class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.1.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.1.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "20841dd3ddc39d389cb65a268abc462cedb1ef886013df0379f956f52c98f6e9"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.1.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "3e5b2eaaec1990bd7a609cbc83a10a1a1c4b4f8a4195b05c95a30561bd6d256e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.1.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "dd4249248ca36697701589a8b840b3af7eefa5e7c195efaa4fc710729ec09263"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.1.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "3effb157a09bb41931abdc4c76e79fd29234ac1e57aeb1a46f2bd7813474b67a"
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
