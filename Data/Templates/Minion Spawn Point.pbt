Assets {
  Id: 13425353885042363499
  Name: "Minion Spawn Point"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9622823497752323607
      Objects {
        Id: 9622823497752323607
        Name: "Minion Spawn Point"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4262778278684556526
        UnregisteredParameters {
          Overrides {
            Name: "cs:npc"
            AssetReference {
              Id: 8851311647763733831
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 14743095798579541843
          }
          TeamSettings {
          }
        }
      }
    }
    Assets {
      Id: 14743095798579541843
      Name: "Weapon Guide Shield"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "weapon_guide_shield_BP_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
