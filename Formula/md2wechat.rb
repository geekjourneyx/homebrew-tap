class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.3.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.3.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "c9fcdcbcc601d5762c70bd8997e7b49bf5d8badb1a59850d272237c1599afc4e"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.3.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "2c213fa02d43b95d7e674c39d2609eef839a7dc104c04706818688ebb1343aa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.3.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "a8e3c87d323ed8839639999bf793080a77d4bd99e266d4581fbcf7a4388bed1f"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.3.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "4e008adbda6fd7d55d61da1bf986db5ab99155651e8f454f7d89a563997db36c"
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
