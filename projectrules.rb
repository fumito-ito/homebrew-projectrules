class ProjectRules < Formula
    desc "Generate .mdc files based on provided keywords"
    homepage "https://github.com/fumito-ito/ProjectRules"

    if OS.mac?
        url "https://github.com/fumito-ito/ProjectRules/releases/download/0.0.6/projectrules-macos.tar.gz"
        sha256 "6ebe9a1ae169503989046e333e64820a0b6be6c3d9c20b67ef66fb90b688439b"
    else
        url "https://github.com/fumito-ito/ProjectRules/releases/download/0.0.6/projectrules-ubuntu.tar.gz"
        sha256 "65b5a7125d77523063772ddc752bf9572aaeea68fb818cb6eb72547b8611cf89"
    end
    license "MIT"
  
    def install
      bin.install "ProjectRules"
    end
  
    test do
      system "#{bin}/ProjectRules", "--help"
    end
  end