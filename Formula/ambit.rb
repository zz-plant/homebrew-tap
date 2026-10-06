class Ambit < Formula
  desc "What you, your agents, and your machines can jointly do, and where time goes"
  homepage "https://github.com/zz-plant/ambit"
  url "https://registry.npmjs.org/ambit-cli/-/ambit-cli-0.6.0.tgz"
  sha256 "ae22ab696a42e28f1b5084703ea29c017852afad7b9654864eb0c9ec0e9629f6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
    # The command's old name, kept for anyone who still types it.
    bin.install_symlink libexec/"bin/ambit" => "tt"
  end

  test do
    system bin/"ambit", "--help"
  end
end
