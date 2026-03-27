class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.0.5"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.5/md2wechat_Darwin_arm64.tar.gz"
      sha256 "8aff9270f50df3959ba80b9722a090a083687fbd4ac56d24d0a5721ee4799f62"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.5/md2wechat_Darwin_x86_64.tar.gz"
      sha256 "d1792f9434b19f86a619ff658a18071f7d2322ea6a6f560949dd3e37263bf7d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.5/md2wechat_Linux_arm64.tar.gz"
      sha256 "51fb5c78c7895ec1f586fb9e291cef51671a769f21fdbf1b59782a309a45b12c"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.5/md2wechat_Linux_x86_64.tar.gz"
      sha256 "92ffaa9e7e70b24a2e3e00513482d7d112677ba61cff08526b11f0bccdc30021"
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
