# regionativo



## Installation:

1. [Install Nix](https://nixos.org/download/)
>`sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)`

2. [Instal Nix Darwin](https://github.com/nix-darwin/nix-darwin)
>`git clone --depth=1 git@github.com:nix-darwin/nix-darwin.git`
>
>`sudo nix --extra-experimental-features "nix-command flakes" run nix-darwin/nix-darwin-24.11#darwin-rebuild -- switch`

3. Apply System Flake Once Manually
Note: Ensure your current cli is inside this project root directory as it references the flake.nix
>`sudo darwin-rebuild switch --flake .#regionativo --impure --show-trace`

4. From now on, to reapply, use the following shortcut from any path:
>`nxr`
