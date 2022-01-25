class PowershellBinary < Formula
    desc "PowerShell for every system"
    homepage "https://github.com/PowerShell/PowerShell"
    version "7.2.1"

    option "with-cn-mirror", "Download from China mainland mirror."

    if Hardware::CPU.arm?
        if build.with? "cn-mirror"
            url "https://s3.jcloud.sjtu.edu.cn/899a892efef34b1b944a19981040f55b-oss01/github-release/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-arm64.tar.gz"
        else
            url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-arm64.tar.gz"
        end

        sha256 "7478d10fd251cf41950392c5c357ab06e6ce439bc85e1c556ef125750957ec7c"
    else
        if build.with? "cn-mirror"
            url "https://s3.jcloud.sjtu.edu.cn/899a892efef34b1b944a19981040f55b-oss01/github-release/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.tar.gz"
        else
            url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.tar.gz"
        end

        sha256 "331307ecf7cc28e7ecc7afa7d0ba4527677996fddfc0c08b913bb4b8adcd8c3d"
    end

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/pwsh" => "pwsh")
    end

    def caveats; <<~EOS
        Executable is linked as "pwsh".
        EOS
    end
end
