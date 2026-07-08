class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.10.1"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.1/md2wechat_Darwin_arm64.tar.gz"
      sha256 "d5cc9c1ea64ea7110fb3d0d0def493d6da2ea38be0b6fbbf6e919e3695106e17"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.1/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "55ae4d810052657fdf8689ff00de71289923522bb374deac1d59a86e65511267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.1/md2wechat_Linux_arm64.tar.gz"
      sha256 "41f42155a3ee3c50271e1f1bad653b97a2a7ea81d13013956e9ab4b26c4fac79"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.1/md2wechat_Linux_x86_64.tar.gz"
      sha256 "42e6d2f69df2484ebe14e755de04f627567d328bacaafa55941dd7288e3acc59"
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
