class Apisprout < Formula
  desc "Lightweight, blazing fast, cross-platform OpenAPI 3 mock server with validation"
  homepage ""
  url "https://github.com/TakesxiSximada/apisprout/archive/refs/tags/v1.3.fork-20211207.tar.gz"
  sha256 "bcc1489ab70e5a661e7621e9fa580b84b96ee88c9ea769b5434e3c8fa52bf55d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
