# SPDX-FileCopyrightText: 2022-2026 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0
{ callPackage }:
let
  ghaf-qemu = callPackage ./ghaf-qemu/package.nix { };
  ghaf-qemu-bpmp = callPackage ./ghaf-qemu-bpmp/package.nix { inherit ghaf-qemu; };
in
{
  inherit ghaf-qemu ghaf-qemu-bpmp;
  ghaf-qemu-bpmp-gpu = callPackage ./ghaf-qemu-bpmp-gpu/package.nix { inherit ghaf-qemu-bpmp; };
}
