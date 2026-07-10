class DsMcp < Formula
  desc "Multi-engine data-source MCP server (MySQL, Postgres, SQLite, DuckDB, MSSQL, ClickHouse, MongoDB, Redis)"
  homepage "https://github.com/stubbedev/ds-mcp"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.4/ds-mcp_v0.3.4_aarch64-apple-darwin.tar.gz"
      sha256 "9918ae9895c944827dd9693ece2b555e4fe4cb002c6a8d70f7294a3bf4c9816b"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.4/ds-mcp_v0.3.4_x86_64-apple-darwin.tar.gz"
      sha256 "a5cbea90b68afcd75eaf1fdcccb172e5ced80f9cfdf213bfe00cd859ec8ab496"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.4/ds-mcp_v0.3.4_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cf820c1711aecbda802e0799fa5364ea964fbce919f0f6ebbab11a082ccae60"
    else
      url "https://github.com/stubbedev/ds-mcp/releases/download/v0.3.4/ds-mcp_v0.3.4_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b5634cd33025d66e5bfef4aee4e88fbfb4260daa01eeb57936d8259c5240696"
    end
  end

  def install
    bin.install "ds-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ds-mcp --version")
  end
end
