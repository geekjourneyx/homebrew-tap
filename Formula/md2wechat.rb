class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.0.3"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.3/md2wechat_Darwin_arm64.tar.gz"
      sha256 "2e88bbcaf0deba0451ea1b0fdc819fc330e2e54d10825dd243e91223ff8c1bc4"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.3/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "b65ea4670bb3e6169ee82eaee8d6bd9848c8285498568d1ce17c8dee4ce978df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.3/md2wechat_Linux_arm64.tar.gz"
      sha256 "8483cd00b8a00250415a30e6c024109cd7550bba584144a13b6f81100d15b24b"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.3/md2wechat_Linux_x86_64.tar.gz"
      sha256 "a576bbfbda2811f08b2604d395270291ed29a1905cd0b9ba33846492a26163ee"
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
