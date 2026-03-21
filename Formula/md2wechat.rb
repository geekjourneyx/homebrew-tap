class Md2wechat < Formula
  desc "Convert Markdown to WeChat Official Account HTML"
  homepage "https://github.com/geekjourneyx/md2wechat-skill"
  license "MIT"
  version "2.0.2"

  on_macos do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.2/md2wechat-darwin-arm64"
      sha256 "03cbaed5e4db8eeb15737212cf50e97cb3b8f8e99f051a6cfc99b102ab0b463d"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.2/md2wechat-darwin-amd64"
      sha256 "a99f99f244974f7e3fe43cee356f2e36066a8ff79c6c62fd4fe81d2d682450a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.2/md2wechat-linux-arm64"
      sha256 "276e74690d01dbe38f8c05496f38e8f0ad8b3f2ff8ed2a9b8461961203a7048b"
    end
    on_intel do
      url "https://github.com/geekjourneyx/md2wechat-skill/releases/download/v2.0.2/md2wechat-linux-amd64"
      sha256 "d95c1a8fdfd982a0122dbff4bb5545e051a9463d569b8557249672121ec0373f"
    end
  end

  def install
    binary_name =
      if OS.mac?
        Hardware::CPU.arm? ? "md2wechat-darwin-arm64" : "md2wechat-darwin-amd64"
      elsif Hardware::CPU.arm?
        "md2wechat-linux-arm64"
      else
        "md2wechat-linux-amd64"
      end

    bin.install binary_name => "md2wechat"
  end

  test do
    require "json"

    payload = JSON.parse(shell_output("#{bin}/md2wechat version --json"))
    assert_equal version.to_s, payload.fetch("data").fetch("version")
  end
end
