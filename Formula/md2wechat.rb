class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "3.4.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.4.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "48ff4b81b0eddd3c731d9b52caa17787bce6115058c68f0e04cbf8664e319485"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.4.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "fb362e259fb937276a488c818d5fcee5617c43051a094cf2dbc842692e23666c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.4.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "8b277cd982cad0771e8529297fe89618b5fbe718e3af0f9797381699b4c7f15d"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v3.4.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "b4ba8a027fe56858f7270eaa7eaeca69dc239fb5f8399f50197515ad79626ed6"
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
