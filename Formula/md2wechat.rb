class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.2.1"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Darwin_arm64.tar.gz"
      sha256 "358ea550c1c5a2a0e63e6904b8142602392d5c7b742d37e1c2571f05ae2a7a93"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "bcfe5d5e608741af11001f66df59ae8109542a72c0f9715d39bfcafcb645f8a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Linux_arm64.tar.gz"
      sha256 "5b5784b44e5e4c2cab7ef0f719195d2df95e4169f0afa613b3f85320b8cac0ef"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.1/md2wechat_Linux_x86_64.tar.gz"
      sha256 "9c0702fe7152660a7161325e41359d7d5163206e8b986921e80ea5e1835b31d8"
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
