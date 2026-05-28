class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.4.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.4.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "4dda822991f5f75dfde7e16f5ec2888bfaabc3c9938c42d629596b158be88292"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.4.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "3f88d27d45cde98a0649bec84931d84a13d875c4a901152c0e81d8f34ede7cd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.4.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "88d6e078be989ed7a1f2ea5fa876c9fb1de1e1c5b58659bf503c2a240b67f065"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.4.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "3cc288d350d923e846b9f6af0a30ac23c804a520ba0c1d1d02fa33a448da6f0a"
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
