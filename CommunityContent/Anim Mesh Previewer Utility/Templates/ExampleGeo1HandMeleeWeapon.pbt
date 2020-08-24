Assets {
  Id: 2746107450084465779
  Name: "ExampleGeo1HandMeleeWeapon"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9249823166817915740
      Objects {
        Id: 9249823166817915740
        Name: "ExampleGeo1HandMeleeWeapon"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1699037771310947650
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
        Id: 1699037771310947650
        Name: "Weapon Guide 1hand_melee"
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
        ParentId: 9249823166817915740
        ChildIds: 3314170268542635016
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 10175688821347533808
          }
        }
      }
      Objects {
        Id: 3314170268542635016
        Name: "Group"
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
        ParentId: 1699037771310947650
        ChildIds: 10788449340116808018
        ChildIds: 12365260294052171000
        ChildIds: 3355761209904334015
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
        Id: 10788449340116808018
        Name: "prop1HandMeleeBlade"
        Transform {
          Location {
            Z: 39.7177429
          }
          Rotation {
          }
          Scale {
            X: 0.0799798369
            Y: 0.0272868127
            Z: 0.613264
          }
        }
        ParentId: 3314170268542635016
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
            Id: 1137112816547272582
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
        Id: 12365260294052171000
        Name: "prop1HandMeleeHandle"
        Transform {
          Location {
            Z: -6.6027832
          }
          Rotation {
          }
          Scale {
            X: 0.0799798369
            Y: 0.0799798369
            Z: 0.29862386
          }
        }
        ParentId: 3314170268542635016
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
            Id: 1137112816547272582
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
        Id: 3355761209904334015
        Name: "prop1HandMeleeHandGuard"
        Transform {
          Location {
            Z: 8.09423828
          }
          Rotation {
          }
          Scale {
            X: 0.143416867
            Y: 0.0864751115
            Z: 0.0277263764
          }
        }
        ParentId: 3314170268542635016
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
            Id: 1137112816547272582
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
      Id: 10175688821347533808
      Name: "Weapon Guide 1hand_melee"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "weapon_guide_melee_BP_ref"
      }
    }
    Assets {
      Id: 1137112816547272582
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
