{ stdenv, pidgin, intltool, autoreconfHook }:
stdenv.mkDerivation {
  name = "purple-events-0.99.1";
  src = ./.;
  preConfigure = ''
    intltoolize --automake --copy --force
  '';
  configureFlags = [
    "--with-purple-plugindir=\${out}/lib/purple-2"
  ];
  buildInputs = [ pidgin intltool autoreconfHook ];
}
