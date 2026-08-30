class Ambit < Formula
  desc "The meta-MCP capability graph for AI agent environments"
  homepage "https://github.com/zz-plant/ambit"
  url "https://github.com/zz-plant/ambit/archive/refs/tags/v0.4.0.tar.gz"
  version "0.4.0"
  sha256 "fa8dc1fd002d4690ec728b8b6dbc8f82d382493a2a56db9aab347f9ed6f03237"
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
