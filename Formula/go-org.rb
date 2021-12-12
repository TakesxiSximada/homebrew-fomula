class GoOrg < Formula
  desc ""
  homepage ""
  url "https://github.com/niklasfasching/go-org/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "66c3402f513771636dda2f6f451ff1f0e5aedeb52eb4bc57295a870737cfacb0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
