class Wesafechat < Formula
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"
  url "https://github.com/CaffreySun/wesafechat/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "66dbf3196326dbd3f7b769e9e3ca7d9234e5addaf0ef173ee0fdcae79d6f67e9"
  license "MIT"
  version "0.2.3"

  depends_on xcode: "15.0"
  depends_on macos: :ventura

  def install
    system "bash", "install.sh", "--no-install", "--output", prefix, "--link"
  end

  def caveats
    <<~EOS
      首次启动请在 Finder 中右键 WeSafeChat.app → 打开以绕过 Gatekeeper。
    EOS
  end
end
