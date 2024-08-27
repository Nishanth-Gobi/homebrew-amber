class HelloWorld < Formula
  desc "Amber the programming language compiled to bash"
  homepage "https://amber-lang.com/"

  url "https://github.com/amber-lang/amber/archive/refs/heads/master.zip", :using => :curl

  version "0.3.4-alpha"
  sha256 "d127d77b951e5a84a0b606467cde41661d0d055bdb0a13a34336d1b7b5f5e672"
  
  def install
    system "bash", "setup/install.sh"
  end

  test do
    system "#{bin}/amber", "--version"
  end
end
