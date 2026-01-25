class TerraformGuardrail < Formula
  include Language::Python::Virtualenv

  desc "Terraform Guardrail MCP (TerraGuard) governance control plane"
  homepage "https://github.com/Huzefaaa2/terraform-guardrail"
  url "https://files.pythonhosted.org/packages/source/t/terraform-guardrail/terraform_guardrail-1.0.4.tar.gz"
  sha256 "229e02b5c19089ffa30d13ba35e892a5647bea2002825b8eca78269b38d53bd2"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/terraform-guardrail", "--help"
  end
end
