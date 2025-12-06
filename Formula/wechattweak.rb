class Wechattweak < Formula
  desc "A command line utility to work with WeChatTweak-macOS."
  homepage "https://tweaks.app"
  version "2.0-beta5"
  url "https://github.com/sunnyyoung/WeChatTweak/releases/download/#{version}/wechattweak"
  sha256 "8be57a41ea5ad6145ffa592d9e80bb862ea0d9bbdaf71828942343ff8ea2c402"
  license "AGPL-3.0"

  depends_on macos: :monterey

  def install
    bin.install "wechattweak"

    system "xattr", "-c", bin/"wechattweak"
  end

  test do
    system bin/"wechattweak", "--help"
  end
end
