class BaiduPcsGo < Formula
    desc "Baidu Personal-Cloud-Storage CLI client."
    homepage "https://github.com/iikira/BaiduPCS-Go"
    version "3.5.3"

    url "https://github.com/iikira/BaiduPCS-Go/releases/download/v#{version}/BaiduPCS-Go-v#{version}-darwin-osx-amd64.zip"
    sha256 "f71c207070e78222daaff6be1be24531ade1eed761e5ac8a5334f65da60e7ec5"

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
