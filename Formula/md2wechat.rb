class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.0.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.0.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "3d0c03bff4ad5fe571a775c80df730404be9c1f21285e371129aa9bbf07163e1"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.0.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "31c4be510d0d57249570ab0e1d31caf552e094349bbf0c068189dee23aca248b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.0.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "dac4695a4dff4af8b064d65fe14431b19d157171c06790e3b77babd99c84e53c"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.0.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "858cc1e9e39e0daacf55f4670be398949dd08e0b4b4c6c52e320c59ae1556f38"
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
