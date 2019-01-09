class BaiduPcsGo < Formula
    desc "Baidu Personal-Cloud-Storage CLI client."
    homepage "https://github.com/iikira/BaiduPCS-Go"
    version "3.5.6"

    url "https://github.com/iikira/BaiduPCS-Go/releases/download/v#{version}/BaiduPCS-Go-v#{version}-darwin-osx-amd64.zip"
    sha256 "db087e64d606639ca3e05a4b482174a06d3c0eabd6cbdbcc317374fc40742a96"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/BaiduPCS-Go" => "bdpcs")
    end

    def caveats; <<~EOS
        Executable is linked as "bdpcs".
        EOS
    end
end
