class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.9.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.9.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "f8bd00d4ffc69984f29e5ddf57398ec77965db25d64642813a6b0012d2b613b3"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.9.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "eeb2fe93e433fb2e1d7b2523e5d99e3042b58b2a7b1ce4b132de953b453598a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.9.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "baeb3a9c49c405f03886199184856fd5842bab86cade1b8af52b79cc31e11b4b"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.9.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "e78cf22cee920e5adbceff140c6d0c50185332fef857c57dd1ee97fb84339640"
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
