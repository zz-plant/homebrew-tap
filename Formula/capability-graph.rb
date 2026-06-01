class CapabilityGraph < Formula
  desc "Capability graph for your OpenCode toolchain"
  homepage "https://github.com/zz-plant/capability-graph"
  url "https://github.com/zz-plant/capability-graph/archive/refs/heads/main.tar.gz"
  version "0.3.0"
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
