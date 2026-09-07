class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.5.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.5.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "df0998f79f32575ebe448b3688705207f940f3b5b3f261e16e93e77095d837aa"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.5.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "02d125537170e37cb19442abdf4f3aa2cb41170edbe120938528a525cacc6fd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.5.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "11911fb88cf10f9afc83c26356cae23412187e7913da35896bac03f7608ffd5f"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.5.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "ed3868a876c248cf9b94ae8ccc5f7c58b0c18450547a29234e41f5e915e2413c"
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
