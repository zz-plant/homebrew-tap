class Ambit < Formula
  desc "What you, your agents, and your machines can jointly do, and where time goes"
  homepage "https://github.com/zz-plant/ambit"
  url "https://github.com/zz-plant/ambit/archive/refs/tags/v0.5.0.tar.gz"
  version "0.5.0"
  sha256 "ea7b865d07678d25acdc9d041f856e90c5140ff4729796a2f151d6bf89002de5"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", "--production"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"cli.js" => "ambit"
    bin.install_symlink libexec/"cli.js" => "tt"
  end
  test do
    system "#{bin}/ambit", "--help"
  end
end
