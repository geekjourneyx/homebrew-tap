class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.0.7"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.7/md2wechat_Darwin_arm64.tar.gz"
      sha256 "b9b28aa9166f3cc40bd55a91e689fceeb01b4b16eb60a61300621e15cc4bb9ef"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.7/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "5021b868faea376441cfe643679eeec4a48b09f6a089ef24846c2a08d6cce77d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.7/md2wechat_Linux_arm64.tar.gz"
      sha256 "d9db3376e5a6b46594ec5f9e881a3e165002259be9ebe23f586cafb4c80f34b7"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.7/md2wechat_Linux_x86_64.tar.gz"
      sha256 "f1ef878f6c35aec11fec5312f9390cb39d6ce4729410ba51216439bed9e29c98"
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
