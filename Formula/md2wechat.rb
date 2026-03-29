class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.0.6"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Darwin_arm64.tar.gz"
      sha256 "ca255916a8739194b2c1fca22998023c399c2df86faf8cf36f7c71af5947c826"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "79cf439ae925cbe5927d7695a1ded1630920b2a97cbbb0b90bcc2ae198cf9bb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Linux_arm64.tar.gz"
      sha256 "0f91744bb78047c89834ff2224311f2c6454c170db431802d45bf33bb3fe4bc7"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Linux_x86_64.tar.gz"
      sha256 "9bb34c483d95570eed8ba5ce44896b3239be05ddb8eb727991f282cfd0f2365b"
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
