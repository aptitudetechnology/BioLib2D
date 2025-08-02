{ pkgs }: {
  deps = [
    pkgs.love
    pkgs.lua
    pkgs.luarocks
    pkgs.lua54Packages.dkjson
  ];
}
