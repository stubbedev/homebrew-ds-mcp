class DsMcp < Formula
  desc "Multi-engine data-source MCP server (MySQL, Postgres, SQLite, DuckDB, MSSQL, ClickHouse, MongoDB, Redis)"
  homepage "https://github.com/stubbedev/ds-mcp"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.3/ds-mcp_v0.3.3_aarch64-apple-darwin.tar.gz"
      sha256 "68f7fb5ad755643881b63fd50e1736222d38f83104256456bcae7a2bc3cab20a"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.3/ds-mcp_v0.3.3_x86_64-apple-darwin.tar.gz"
      sha256 "cbc790377cba5ffc3382987a58aa0d4ee8c0e32fe7676984d7ad060f37fdd313"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.3/ds-mcp_v0.3.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "816a094343463b6f954eae06246af560cbd3c95fdf5e578823970edc2984184b"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.3/ds-mcp_v0.3.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0326e3e03a49cb7140a657c8481240af6d7abddfabac11f301f81cbd63605d08"
    end
  end

  def install
    bin.install "ds-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ds-mcp --version")
  end
end
