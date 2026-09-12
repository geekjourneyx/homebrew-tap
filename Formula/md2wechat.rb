class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.6.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.6.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "bacadef71dff2eada30f253342b3e7b8a23d646331aff90deacfdf4622a4ef71"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.6.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "b2bb4a208b5b475c4511b2f86252ded24f421e006c08c19b663c25292b9ed766"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.6.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "eb928605fc175066d438120582086329d2d0952b1ce2e37ecc347744e943f573"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.6.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "50b8d47bc9e49bf32311bf5c6ef4d0ac38fd75643cbc4c1a87fc8037ef06e9ce"
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
