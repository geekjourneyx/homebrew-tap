class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.8.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.8.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "5b7c053f426dd7b2e5a69136cc2d2131cf7cb0db1ba792a53490d07d7534a003"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.8.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "6d61e11e84950e1511a5813f6ce6620eda56530de6419a57b59f7ed5f4906dbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.8.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "5ea056a20c07385bae47130ad9a2c35fd0740f9f5274fdd4c9776ad1a5ce974f"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.8.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "fa8f784349e4c4e55f06a8b169576f8445725f0d80a2d38641b347b18ab1ebdf"
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
