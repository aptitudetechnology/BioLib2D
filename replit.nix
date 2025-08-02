run = "XDG_RUNTIME_DIR=/tmp love BioLib2D/"
modules = ["nix"]

[nix]
channel = "stable-24_05"

[deployment]  
run = ["sh", "-c", "XDG_RUNTIME_DIR=/tmp love BioLib2D/"]
