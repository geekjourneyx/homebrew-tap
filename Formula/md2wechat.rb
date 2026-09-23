class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.7.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.7.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "c04b324a2878a73e506a0c23cd5997fac48435c806bd9ceb7669c3a2af56844f"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.7.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "6bca6d5f6fbcda5088af073b6361d8b8528b8139921f9c1a186b85d23fc103f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.7.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "dbf21bbd50ae9ae09bd631e2be67b10abbcd67c2663e50d2cf1c8496db8c0785"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.7.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "14ad063bc09b0b858d07e7dc7f8fbb8797ee61ca7d89dfb2049f90e0718dc3d8"
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
