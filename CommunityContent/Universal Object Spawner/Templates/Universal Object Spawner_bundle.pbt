Assets {
  Id: 13064981592497802851
  Name: "Universal Object Spawner"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17769339733965713502
      Objects {
        Id: 17769339733965713502
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 7577206932598821004
            }
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "213c45e600cd42baaa4ef626d4f6c443"
    OwnerAccountId: "b4c6e32137e54571814b5e8f27aa2fcd"
    OwnerName: "standardcombo"
    Version: "1.5.0"
    Description: "Spawns any kind of Core Object. If it\'s an equipment, then when it\'s equipped by a player the next object is spawned. If it\'s not equipment, it will trigger the respawn based on the object being destroyed, which is a common pattern for consumables/powerups.\r\n\r\nCan randomly select between different objects to spawn, just add all the possible objects as custom properties to the root of the spawner. Custom properties added this way don\'t need specific names."
  }
  SerializationVersion: 62
}
