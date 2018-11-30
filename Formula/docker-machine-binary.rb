class DockerMachineBinary < Formula
    desc "Machine management for a container-centric world"
    homepage "https://github.com/docker/machine"
    version "0.16.0"

    url "https://github.com/docker/machine/releases/download/v#{version}/docker-machine-Darwin-x86_64"
    sha256 "0ccc499c0a01bd8fe716c384143daf5ce4ee7f7a72f75325274aed78b8b75146"

    bottle :unneeded
    conflicts_with "docker-machine"

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/docker-machine-Linux-x86_64", "#{libexec}/docker-machine")
        chmod(0755, "#{libexec}/docker-machine")
        bin.install_symlink("#{libexec}/docker-machine" => "docker-machine")
    end

    def caveats; <<~EOS
        Executable is linked as "docker-machine".
        EOS
    end
end
