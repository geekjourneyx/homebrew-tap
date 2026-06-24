class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.8.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.8.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "157bd924b83e819c47f930167d8132e598abc7c9fc386203f664485a1827054f"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.8.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "e9dad874d267140f211efb838913593476fcfdae8fa6c763d3609c86c2233950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.8.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "9b7cf38aec3edcf709f7ebce0c88423b7f4547765dbfa82166abec8598934d9c"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.8.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "0b86da3ac6d40205fe23f6796fe6285cdc80000bb634db48e6ef3d96fce8a5bc"
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
