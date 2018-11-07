class GoTun2socks < Formula
    desc "A tun2socks implementation written in Go."
    homepage "https://github.com/eycorsican/go-tun2socks"
    version "1.8"

    url "https://github.com/eycorsican/go-tun2socks/releases/download/v#{version}/tun2socks-darwin-10.6-amd64.zip"
    sha256 "477aa5ae25a2a9cb543d81b869c8cace4646367e6f36874f30a4dff09b38eaf6"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/build/tun2socks-darwin-10.6-amd64")
        bin.install_symlink("#{libexec}/build/tun2socks-darwin-10.6-amd64" => "go-tun2socks")
    end

    def caveats; <<~EOS
        Executable is linked as "go-tun2socks".
        EOS
    end
end
