class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.0.6"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Darwin_arm64.tar.gz"
      sha256 "2b6f225a85e8e990426d132a4d19f893d435f6cf6b9682493d5952eac168937b"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "9957d138c84d77f0e174d8f68a1ce84ea9fe4f1d4b46814680304254e6a83e73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Linux_arm64.tar.gz"
      sha256 "f091918eaf574f48f0b3b504c42c5152727eacb2d80618869806108737aa38db"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.6/md2wechat_Linux_x86_64.tar.gz"
      sha256 "ab612f1c6e02a1ce46381ae5c70b444fee4720144374e752f93c69353d62ddb8"
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
