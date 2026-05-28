class Omp < Formula
  desc "AI coding agent for the terminal (read, bash, edit, write tools)"
  homepage "https://github.com/PfisterFactor/oh-my-pi"
  version "15.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-arm64"
      sha256 "3199fe35b336782c1d98bfbd2f2d0d9b864dd8c191314ab38fb8ff683feda28c"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-x64"
      sha256 "3b8867b619be9e60c7ae6a914256fa59a9f77a1331ed841944b938a7006c7b05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-arm64"
      sha256 "5c0a4575035b68c5936cfe1fbeb0939527481729b901323257d93e24ddea655d"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-x64"
      sha256 "15a6334826c47fb937f681221dd6153cdff286a0675b5a675c40d8b200685d21"
    end
  end

  def install
    # Release assets are bare executables, not archives.
    binary = Dir["omp-*"].first
    bin.install binary => "omp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omp --version")
  end
end
