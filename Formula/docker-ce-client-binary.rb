class DockerCeClientBinary < Formula
    desc "Pack, ship and run any application as a lightweight container. This is the community edition, and includes only client binary (no dockerd daemon)."
    homepage "https://docs.docker.com/install/linux/docker-ce/binaries"
    version "18.09.0"

    url "https://download.docker.com/mac/static/stable/x86_64/docker-#{version}.tgz"
    sha256 "1c68be323e36d0ddb03867bc3a0ef89e9e92532d42b63abb9a1ef19e06d2015c"

    bottle :unneeded
    conflicts_with "docker", :because => "both install `docker` binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
