Assets {
  Id: 1079947225961802113
  Name: "ExampleGeo2HandRifle"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6173048051470263001
      Objects {
        Id: 6173048051470263001
        Name: "ExampleGeo2HandRifle"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13688387175836294177
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
        Id: 13688387175836294177
        Name: "Weapon Guide 2hand_rifle"
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
        ParentId: 6173048051470263001
        ChildIds: 15260727073837236002
        ChildIds: 10466029814116686419
        ChildIds: 17958977944836707734
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 7686548360307776179
          }
        }
      }
      Objects {
        Id: 15260727073837236002
        Name: "prop2HandRifleTop"
        Transform {
          Location {
            X: 11.3450012
            Z: 15.49263
          }
          Rotation {
          }
          Scale {
            X: 0.879552722
            Y: 0.0632145256
            Z: 0.16893369
          }
        }
        ParentId: 13688387175836294177
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
        Id: 10466029814116686419
        Name: "prop2HandRifleStock"
        Transform {
          Location {
            X: -32.6503601
            Z: 6.54429626
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 89.9996948
            Roll: -90
          }
          Scale {
            X: 0.0630021319
            Y: 0.082179904
            Z: 0.510587394
          }
        }
        ParentId: 13688387175836294177
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
            Id: 17716938680836301259
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
        Id: 17958977944836707734
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
        ParentId: 13688387175836294177
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
      Id: 7686548360307776179
      Name: "Weapon Guide 2hand_rifle"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "GunGuide_ref"
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
    Assets {
      Id: 17716938680836301259
      Name: "Wedge"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
