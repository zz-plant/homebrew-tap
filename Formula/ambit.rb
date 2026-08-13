class Ambit < Formula
  desc "The combined action space of you, your agents, and your machines"
  homepage "https://github.com/zz-plant/ambit"
  url "https://github.com/zz-plant/ambit/archive/refs/tags/v0.4.0.tar.gz"
  version "0.4.0"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", "--production"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"cli.js" => "tt"
  end
  test do
    system "#{bin}/tt", "--help"
  end
end
