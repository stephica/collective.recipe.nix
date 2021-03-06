with import <nixpkgs> {};
buildEnv {
  name = "buildout";
  paths = [
    cacert
    coreutils
    freetype
    gcc
    libffi
    libjpeg
    libtiff
    libwebp
    openldap
    openssl
    tcl
    zlib
    (python.buildEnv.override {
      extraLibs = [
        (pythonPackages.zc_buildout_nix.overrideDerivation(args: {
          postInstall = "";
        }))
      ];
    })
  ];
}
