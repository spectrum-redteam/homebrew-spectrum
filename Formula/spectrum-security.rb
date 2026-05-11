class SpectrumSecurity < Formula
  include Language::Python::Virtualenv
  desc "Autonomous Cyber Reasoning System - Red Team & Blue Team AI agents"
  homepage "https://github.com/spectrum-redteamer/spectrum-project"
  url "https://files.pythonhosted.org/packages/45/60/cef00a61140724b708a86cbe470fcc00ac0ec66e8ab6c492e26922757896/spectrum_security-1.35.17.tar.gz"
  sha256 "5d3d2d85264b4417d9d78e8e632eb14baa93f183cdbf62dbac558760a3f8a1d7"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/spectrum", "--help"
  end
end
