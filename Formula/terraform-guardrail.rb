class TerraformGuardrail < Formula
  include Language::Python::Virtualenv

  desc "Terraform Guardrail MCP (TerraGuard) governance control plane"
  homepage "https://github.com/Huzefaaa2/terraform-guardrail"
  url "https://files.pythonhosted.org/packages/source/t/terraform-guardrail/terraform_guardrail-1.0.2.tar.gz"
  sha256 "9bd1f4feffb7ac527f3b510b9d06ca17ecfd6369b7d5f64b763820406ed24fb6"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/terraform-guardrail", "--help"
  end
end
