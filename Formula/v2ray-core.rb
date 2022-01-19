class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2fly/v2ray-core"
    version "4.44.0"

    url "https://github.com/v2fly/v2ray-core/releases/download/v#{version}/v2ray-macos-64.zip"
    sha256 "8a97eebf1ccadb6fa82245db23fa62c7857af9cdb2acbf6cb41c552bc502bbb4"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/v2ray")
        bin.install_symlink("#{libexec}/v2ctl")
        chmod(0755, "#{libexec}/v2ray")
        chmod(0755, "#{libexec}/v2ctl")
        bin.install_symlink("#{libexec}/geoip.dat")
        bin.install_symlink("#{libexec}/geosite.dat")
    end

    def caveats; <<~EOS
        Executable linked as "v2ray" and "v2ctl".
        "geoip.dat" and "geosite.dat" are also installed as symlinks.
        EOS
    end
end
