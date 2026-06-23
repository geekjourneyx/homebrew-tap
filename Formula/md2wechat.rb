class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "proprietary"
  version "2.7.0"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.7.0/md2wechat_Darwin_arm64.tar.gz"
      sha256 "1cd75f707a0b691d72f2ceeca40552917a361160ac6e7e42a524abacfd6f1ca3"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.7.0/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "9cd93aa63626887080829d71b9212bd07849f11f95303c55c74bc24b9dd039fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.7.0/md2wechat_Linux_arm64.tar.gz"
      sha256 "11113ac23e60818909286ab17bd17ab52e8cc409c44eeeba5729d2653af99e99"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.7.0/md2wechat_Linux_x86_64.tar.gz"
      sha256 "e50f0de5854dbefc6fdf0d31cb8bd2f9938ad7c8b7f778a35bddf6707e25c0c2"
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
