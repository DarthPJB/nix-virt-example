{
   inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
   outputs = { self, nixpkgs }: 
   {
       nixosConfigurations.vm1 = nixpkgs.lib.nixosSystem 
       {
        system = "x86_64-linux";
         modules = 
         [
            {
               virtualisation.vmVariant.virtualisation.graphics = false
            };
         ]
       }
   }
}
