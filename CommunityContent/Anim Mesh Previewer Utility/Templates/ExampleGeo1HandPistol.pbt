Assets {
  Id: 16127160615805560440
  Name: "ExampleGeo1HandPistol"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1400385806899080785
      Objects {
        Id: 1400385806899080785
        Name: "ExampleGeo1HandPistol"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5670431770659160806
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5670431770659160806
        Name: "Weapon Guide 1hand_pistol"
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
        ParentId: 1400385806899080785
        ChildIds: 10851874496111857926
        ChildIds: 8517604457281425536
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 7069612720622525469
          }
        }
      }
      Objects {
        Id: 10851874496111857926
        Name: "prop1HandPistolTop"
        Transform {
          Location {
            X: 10.8512573
            Z: 10.8997803
          }
          Rotation {
          }
          Scale {
            X: 0.336567074
            Y: 0.0632145256
            Z: 0.0889178
          }
        }
        ParentId: 5670431770659160806
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3161763375421834584
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8517604457281425536
        Name: "prop2HandRifleGrip"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -8.74611855
          }
          Scale {
            X: 0.0850293934
            Y: 0.0510862842
            Z: 0.205563575
          }
        }
        ParentId: 5670431770659160806
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3161763375421834584
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 7069612720622525469
      Name: "Weapon Guide 1hand_pistol"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "weapon_guide_pistol_BP_ref"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
