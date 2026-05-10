class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.2.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "c74af5d86a527ca2273f9991df9b3250f20ad8647a7d870aefce7a217bf8d863"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "b6f1dd7ddd02941d4a223de8ccc79676527c9226debb13ffb66809233b63adfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "74947bbbf27eb3d26dc7fbc73072898d53c949574ded032ba86f8355461867e4"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.2.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "255918749ad51ca3e1979ac44e1c32688fffc20d8e2a9139e403c306c24825d3"
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
