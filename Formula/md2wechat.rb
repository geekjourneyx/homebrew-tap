class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.0.4"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.4/md2wechat_Darwin_arm64.tar.gz"
      sha256 "f3e7d1a3357a444469d5b5151aff3a8e7a63869204985528ca97a2ee9844f2c4"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.4/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "d0d176db657ee1f5569e0185eb969c0c12c836c0b4f8ad58a186ab86d928e5a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.4/md2wechat_Linux_arm64.tar.gz"
      sha256 "6a61d8ab5fd273a1971b1e72a6153c21acf4acc647b9411ca17359b6140c7d6c"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.4/md2wechat_Linux_x86_64.tar.gz"
      sha256 "7349b654d497ea93514e7e8269bed3149c1c08d908476592b0928ea8304748c1"
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
