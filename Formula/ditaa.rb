class Ditaa < Formula
  desc "Convert ASCII diagrams into proper bitmap graphics with Chinese Janapese Korean Wide character support."
  homepage "https://github.com/TakesxiSximada/ditaa"
  url "https://github.com/TakesxiSximada/ditaa/releases/download/v0.11.0-symdon-01/ditaa-0.11.0-standalone.jar"
  sha256 "8ff281250aaeb38b4cb06de2358cb80e1e54cea8964cf2dd4442be4cd0007b72"
  license "LGPL-3.0"
  revision 1

  depends_on "openjdk"

  def install
    libexec.install "ditaa-#{version}-standalone.jar"
    (bin/"ditaa").write <<~EOS
      #!/bin/bash
      exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/ditaa-#{version}-standalone.jar" "$@"
    EOS
  end

  test do
    system "#{bin}/ditaa", "-help"
  end
end
