class TerraformGuardrail < Formula
  include Language::Python::Virtualenv

  desc "Terraform Guardrail MCP (TerraGuard) governance control plane"
  homepage "https://github.com/Huzefaaa2/terraform-guardrail"
  url "https://files.pythonhosted.org/packages/source/t/terraform-guardrail/terraform_guardrail-1.0.1.tar.gz"
  sha256 "12029fa345bc693e129e73fbdc3ee911b62b00bd354e0eb88ea2e46134017a96"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/terraform-guardrail", "--help"
  end
end
