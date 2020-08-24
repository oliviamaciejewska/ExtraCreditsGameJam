Assets {
  Id: 4658074148809560670
  Name: "Npc Down Camp"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15696987775507161530
      Objects {
        Id: 15696987775507161530
        Name: "Npc Down Camp"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9787735103849288229
        ChildIds: 16482303059718013596
        ChildIds: 4275615143758693179
        ChildIds: 2057160103130010676
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 16482303059718013596
        Name: "NPCSpawner"
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
        ParentId: 15696987775507161530
        UnregisteredParameters {
          Overrides {
            Name: "cs:Team"
            Int: 0
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6749296926700622752
          }
        }
      }
      Objects {
        Id: 4275615143758693179
        Name: "NPCCampBehavior_PeriodicSpawn"
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
        ParentId: 15696987775507161530
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 1761536195829066307
          }
        }
      }
      Objects {
        Id: 2057160103130010676
        Name: "SpawnPoints"
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
        ParentId: 15696987775507161530
        ChildIds: 6820319603459978638
        ChildIds: 8163329003056293008
        ChildIds: 3966500404423325276
        ChildIds: 9034744436766502801
        ChildIds: 10308565500418823420
        ChildIds: 9193485089765046337
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6820319603459978638
        Name: "Spawn Point"
        Transform {
          Location {
            X: -2650
            Y: -2400
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2057160103130010676
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
      Objects {
        Id: 8163329003056293008
        Name: "Minion Spawn Point"
        Transform {
          Location {
            Z: -100
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2057160103130010676
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
      Objects {
        Id: 3966500404423325276
        Name: "Minion Spawn Point"
        Transform {
          Location {
            X: -4650
            Y: -2200
            Z: -100
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2057160103130010676
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
      Objects {
        Id: 9034744436766502801
        Name: "Minion Spawn Point"
        Transform {
          Location {
            X: -5750
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2057160103130010676
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
      Objects {
        Id: 10308565500418823420
        Name: "Minion Spawn Point"
        Transform {
          Location {
            X: -6000
            Y: -5100
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2057160103130010676
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
      Objects {
        Id: 9193485089765046337
        Name: "Minion Spawn Point"
        Transform {
          Location {
            X: -7700
            Y: -150
            Z: -100
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2057160103130010676
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
