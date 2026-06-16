class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.6.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.6.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "c55d421669337d39939d54104f63fca24b7c9ce4a25863fc9c81f565164b39bd"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.6.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "8c5a4e820c47a307faa7e59e05333e2bed0578aaef9c91dae90824e25b0c034f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.6.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "d2ff5ac503c44b7613d44e252c010dbc5516e824142d3e30ec39843a0e9aa31e"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.6.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "7e67825a5a5bb89e29818d4719277aeacb67796018b3b4658eeec1a5583d517f"
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
