class MitmproxyBinary < Formula
    desc "An interactive TLS-capable intercepting HTTP proxy for penetration testers and software developers."
    homepage "https://github.com/mitmproxy/mitmproxy"
    version "4.0.4"

    url "https://snapshots.mitmproxy.org/#{version}/mitmproxy-#{version}-osx.tar.gz"
    sha256 "5e235c4cea420df67a1133e0c7eb7d56fac59575e93a1969823c343697333492"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/mitmproxy")
        bin.install_symlink("#{libexec}/mitmweb")
        bin.install_symlink("#{libexec}/mitmdump")
    end

    def caveats; <<~EOS
        Executables are linked as "mitmproxy", "mitmweb", "mitmdump".
        EOS
    end
end
