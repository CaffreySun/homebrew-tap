class Wesafechat < Formula
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"
  url "https://github.com/CaffreySun/wesafechat/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "edaadd8a0d353aeefc087fe7179885e2e107ef33558bad6d81688385a49507c5"
  license "MIT"
  version "0.2.4"

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
