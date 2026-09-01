class Ambit < Formula
  desc "The meta-MCP capability graph for AI agent environments"
  homepage "https://github.com/zz-plant/ambit"
  url "https://github.com/zz-plant/ambit/archive/refs/tags/v0.4.1.tar.gz"
  version "0.4.1"
  sha256 "21b1629d1a7629cbd8491fc827dade6e6c016dee2923790d1d97936a58b178f1"
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
