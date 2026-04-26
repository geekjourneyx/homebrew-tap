class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.1.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.1.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "baf75581aca17625422ddc2ba611aa14d5c12bd485408e7bcf4fcfc85bcfc764"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.1.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "7fa979f1dd135cba0415e7f4699da5573a6ac54fb512ae3f103fb036b06e2502"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.1.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "e437b225d06302ff62032cd54fdb4c51625563579e02c524c806f27d60cadfbd"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.1.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "3d48fb4763b77870ba30a19d63a3a8e6600df01ca2b0f973bfd11cc314d94f3b"
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
