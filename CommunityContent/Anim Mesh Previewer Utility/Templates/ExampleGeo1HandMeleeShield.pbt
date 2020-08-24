Assets {
  Id: 774874883643960894
  Name: "ExampleGeo1HandMeleeShield"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5977139922448550229
      Objects {
        Id: 5977139922448550229
        Name: "ExampleGeo1HandMeleeShield"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17930084276249239939
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
        Id: 17930084276249239939
        Name: "Weapon Guide Shield"
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
        ParentId: 5977139922448550229
        ChildIds: 473907347335248810
        ChildIds: 7879573971817873706
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
        }
      }
      Objects {
        Id: 473907347335248810
        Name: "prop1HandMeleeShieldBottom"
        Transform {
          Location {
            Y: 0.843835831
            Z: 3.14511108
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 0.726400256
            Y: 0.062693283
            Z: 1.32897139
          }
        }
        ParentId: 17930084276249239939
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
            Id: 5489775416547967874
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
        Id: 7879573971817873706
        Name: "prop1HandMeleeShieldTop"
        Transform {
          Location {
            Y: 0.843835831
            Z: 3.14511108
          }
          Rotation {
          }
          Scale {
            X: 0.726400256
            Y: 0.062693283
            Z: 0.717277884
          }
        }
        ParentId: 17930084276249239939
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
            Id: 5489775416547967874
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
      Id: 14743095798579541843
      Name: "Weapon Guide Shield"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "weapon_guide_shield_BP_ref"
      }
    }
    Assets {
      Id: 5489775416547967874
      Name: "Hemisphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
