class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.3.1"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.1/md2wechat_Darwin_arm64.tar.gz"
      sha256 "6834e993f197cb7b1e7fe4a5a71c539854cd4edbee3510799133859c8d4f4792"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.1/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "a9e1930273684658284f3234f8984056b885e4f975a9445e04f648967494a8db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.1/md2wechat_Linux_arm64.tar.gz"
      sha256 "cf2dd542f21fe9e1bfc65ae293cb96ab28ab8c664c94d5805466d06456121f69"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.3.1/md2wechat_Linux_x86_64.tar.gz"
      sha256 "e56a6fbf1c4061eccca385d2fd2680362f24069811e5742327af37ad04643b5d"
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
