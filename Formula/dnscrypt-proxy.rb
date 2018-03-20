class DnscryptProxy < Formula
    desc "A flexible DNS proxy, with support for encrypted DNS protocols."
    homepage "https://github.com/jedisct1/dnscrypt-proxy https://dnscrypt.info/"
    version "2.0.7"

    url "https://github.com/jedisct1/dnscrypt-proxy/releases/download/#{version}/dnscrypt-proxy-macos-#{version}.tar.gz"
    sha256 "16c85a33b9463c27ff946564b48398fa03c7fca5df4b7e2b43ac6c59513feff2"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dnscrypt-proxy")
    end

    def caveats; <<~EOS
        Executable linked as "dnscrypt-proxy".
        EOS
    end
end
