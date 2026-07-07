class DsMcp < Formula
  desc "Multi-engine data-source MCP server (MySQL, Postgres, SQLite, DuckDB, MSSQL, ClickHouse, MongoDB, Redis)"
  homepage "https://github.com/stubbedev/ds-mcp"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.1/ds-mcp_v0.3.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "ds-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ds-mcp --version")
  end
end
