class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.5.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.5.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "329bed65c5aeaa2de618dabc0a5003e8f259fb01da577fcbfd62f3182e074591"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.5.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "e5c34a8aaccb457a7b730175f7551e5374a0ae45ca4d8e66c32039058f51ffae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.5.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "c16df5f010ce406e97337282e412a101459173e1f2829c3b7c6287ff20aae1bc"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.5.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "c7e0fbd6607172a646a2264683d5c54adf310aedd631b957d4196e781f42f047"
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
