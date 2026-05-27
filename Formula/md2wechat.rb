class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.3.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "2300af5e3ac623b0967bc227aaa8df715ee6f1cdc68caa29eeb398651fd30a49"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "6c48f0b9ab8d000b7765845364b4da669eec4ea734b9bc1b45c8db613480cb6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "75a8092668c339a5bfa6ff8bd4d9e111fd94bbc7b9f5ad67ec1155cdac687613"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "ec2baf84ccd6074740cdb2776f2dcf9f1ae7abf3882f7b0a5ade8c0fca2fc95d"
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
