class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.10.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "83dd50fd9cab2121daaac9647b4828a4393fe86064d8eaed4b24732954152c26"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "a608b98ef7718ed4e618eadaeed83f862663647e6688a87f61ec314ae9f5eb48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "d01d11708450393f27f2244701f6b081f91a03b3d45f2a0af2e8640d26fd3b3c"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.10.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "7dc43993699f84e53bd49bfc26e8c15038a8b627ee52696f80a9a55ea53c4c56"
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
