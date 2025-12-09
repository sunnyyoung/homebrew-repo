class Wechattweak < Formula
  desc "A command-line tool for tweaking WeChat."
  homepage "https://tweaks.app"
  version "2.0.1"
  url "https://github.com/sunnyyoung/WeChatTweak/releases/download/#{version}/wechattweak"
  sha256 "2e29571787eaf7044f1d343934cdc1cf939f5edeb73c85285df55f27ce060058"
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
