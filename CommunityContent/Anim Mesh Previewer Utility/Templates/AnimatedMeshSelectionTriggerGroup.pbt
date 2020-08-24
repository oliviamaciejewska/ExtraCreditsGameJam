Assets {
  Id: 9057292656450003442
  Name: "AnimatedMeshSelectionTriggerGroup"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11054380374728225592
      Objects {
        Id: 11054380374728225592
        Name: "AnimatedMeshSelectionTriggerGroup"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5487026448347364370
        ChildIds: 1462254660631622374
        UnregisteredParameters {
          Overrides {
            Name: "cs:SelectionTrigger"
            ObjectReference {
              SubObjectId: 1462254660631622374
            }
          }
        }
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
        Id: 5487026448347364370
        Name: "Selection Indicator Decal"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 0.65
            Y: 0.65
            Z: 4
          }
        }
        ParentId: 11054380374728225592
        UnregisteredParameters {
          Overrides {
            Name: "bp:Corner Rounding"
            Float: 0.55946368
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 0.990000069
            }
          }
          Overrides {
            Name: "bp:Fade Delay"
            Float: 0
          }
          Overrides {
            Name: "bp:Fade Time"
            Float: 0
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2.73038435
          }
          Overrides {
            Name: "bp:Stroke Color"
            Color {
              R: 0.0899999738
              G: 1
              B: 0.909602821
              A: 1
            }
          }
          Overrides {
            Name: "bp:Stroke Width"
            Float: 0.10586521
          }
          Overrides {
            Name: "bp:Sides"
            Int: 6
          }
          Overrides {
            Name: "bp:Blur"
            Float: 0
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        Blueprint {
          BlueprintAsset {
            Id: 7153129052319627819
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 1462254660631622374
        Name: "TriggerGroup"
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
        ParentId: 11054380374728225592
        ChildIds: 16149051237058356186
        ChildIds: 11779496144288763735
        ChildIds: 932969533646903600
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
        Id: 16149051237058356186
        Name: "Trigger"
        Transform {
          Location {
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1462254660631622374
        ChildIds: 6691442244383166246
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 6691442244383166246
        Name: "AnimatedMeshSelectorScript"
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
        ParentId: 16149051237058356186
        UnregisteredParameters {
          Overrides {
            Name: "cs:ExampleGeo1HandMeleeWeapon"
            AssetReference {
              Id: 2746107450084465779
            }
          }
          Overrides {
            Name: "cs:ExampleGeo1HandMeleeShield"
            AssetReference {
              Id: 774874883643960894
            }
          }
          Overrides {
            Name: "cs:ExampleGeo1HandPistol"
            AssetReference {
              Id: 16127160615805560440
            }
          }
          Overrides {
            Name: "cs:ExampleGeo2HandRifle"
            AssetReference {
              Id: 1079947225961802113
            }
          }
          Overrides {
            Name: "cs:ExampleGeo2HandStaff"
            AssetReference {
              Id: 7761851556032496929
            }
          }
          Overrides {
            Name: "cs:ExampleGeo2HandSword"
            AssetReference {
              Id: 8170001862097903816
            }
          }
          Overrides {
            Name: "cs:SelectionSquare"
            ObjectReference {
              SubObjectId: 5487026448347364370
            }
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
            Id: 14226978164194169002
          }
        }
      }
      Objects {
        Id: 11779496144288763735
        Name: "2D Basic Shapes Decal"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 0.546204031
            Y: 0.546204031
            Z: 0.644502699
          }
        }
        ParentId: 1462254660631622374
        UnregisteredParameters {
          Overrides {
            Name: "bp:Corner Rounding"
            Float: 0
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 0.990000069
              A: 1
            }
          }
          Overrides {
            Name: "bp:Fade Delay"
            Float: 0
          }
          Overrides {
            Name: "bp:Fade Time"
            Float: 0
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
            Id: 7153129052319627819
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 932969533646903600
        Name: "Select Mesh Red Text"
        Transform {
          Location {
            X: 50.8765564
            Y: 52.690033
          }
          Rotation {
          }
          Scale {
            X: 0.200795576
            Y: 0.200795576
            Z: 1.4913
          }
        }
        ParentId: 1462254660631622374
        ChildIds: 10786942474133061158
        ChildIds: 9354180528919543558
        ChildIds: 2015597806679043185
        ChildIds: 3974205137723270837
        ChildIds: 4769521627654362398
        ChildIds: 2145078711898177442
        ChildIds: 5963499921359202491
        ChildIds: 5460474779651942041
        ChildIds: 1616774032637850094
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
        Id: 10786942474133061158
        Name: "S"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 0.30058229
            Y: 0.30058229
            Z: 0.30058229
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 10
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 1784866382590929844
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 9354180528919543558
        Name: "E"
        Transform {
          Location {
            Y: -50
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.30058229
            Y: 0.30058229
            Z: 0.30058229
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 4
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 1784866382590929844
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 2015597806679043185
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: 39.7075195
            Y: -99.3796692
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0267650262
            Y: 0.222716108
            Z: 1
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 3974205137723270837
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: 5.22314453
            Y: -85
          }
          Rotation {
          }
          Scale {
            X: 0.0956579521
            Y: 0.284419
            Z: 1
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 4769521627654362398
        Name: "E"
        Transform {
          Location {
            Y: -145
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.30058229
            Y: 0.30058229
            Z: 0.30058229
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 4
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 1784866382590929844
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 2145078711898177442
        Name: "C"
        Transform {
          Location {
            Y: -190
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.30058229
            Y: 0.30058229
            Z: 0.30058229
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 2
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 1784866382590929844
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 5963499921359202491
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: -27.7219238
            Y: -250
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0560818464
            Y: 0.336229503
            Z: 1
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 5460474779651942041
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: 5.22317
            Y: -250
          }
          Rotation {
          }
          Scale {
            X: 0.0956579521
            Y: 0.28441903
            Z: 1
          }
        }
        ParentId: 932969533646903600
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 1616774032637850094
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
        ParentId: 932969533646903600
        ChildIds: 10790306355296775060
        ChildIds: 4740073559303448673
        ChildIds: 122242056344628134
        ChildIds: 4302568558389655279
        ChildIds: 16877209892913113360
        ChildIds: 6916568523487838353
        ChildIds: 16203331554752583806
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
        Id: 10790306355296775060
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: 8.27852821
            Y: -321.732178
          }
          Rotation {
            Yaw: 3.41509372e-06
          }
          Scale {
            X: 0.0961047187
            Y: 0.23
            Z: 1
          }
        }
        ParentId: 1616774032637850094
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 4740073559303448673
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: 9.41900253
            Y: -336.551666
          }
          Rotation {
            Yaw: -14.2521057
          }
          Scale {
            X: 0.0961042494
            Y: 0.190092459
            Z: 1
          }
        }
        ParentId: 1616774032637850094
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 122242056344628134
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: 9.41900253
            Y: -359.432465
          }
          Rotation {
            Yaw: 14.252
          }
          Scale {
            X: 0.0961042494
            Y: 0.190092459
            Z: 1
          }
        }
        ParentId: 1616774032637850094
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 4302568558389655279
        Name: "Decal Painted Lines 01"
        Transform {
          Location {
            X: 8.27852821
            Y: -373.05954
          }
          Rotation {
            Yaw: 3.41509281e-06
          }
          Scale {
            X: 0.0961047187
            Y: 0.23
            Z: 1
          }
        }
        ParentId: 1616774032637850094
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
            Id: 8539981025625262831
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 16877209892913113360
        Name: "E"
        Transform {
          Location {
            X: -0.000402624719
            Y: -422.127045
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.30058229
            Y: 0.30058229
            Z: 0.30058229
          }
        }
        ParentId: 1616774032637850094
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 4
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 1784866382590929844
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 6916568523487838353
        Name: "S"
        Transform {
          Location {
            X: -0.000402624719
            Y: -474.893799
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.30058229
            Y: 0.30058229
            Z: 0.30058229
          }
        }
        ParentId: 1616774032637850094
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 10
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 1784866382590929844
          }
          DecalBP {
          }
        }
      }
      Objects {
        Id: 16203331554752583806
        Name: "H"
        Transform {
          Location {
            X: 7.2106061
            Y: -533.003845
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.30058229
            Y: 0.30058229
            Z: 0.30058229
          }
        }
        ParentId: 1616774032637850094
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 8
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 1784866382590929844
          }
          DecalBP {
          }
        }
      }
    }
    Assets {
      Id: 7153129052319627819
      Name: "2D Basic Shapes Decal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "dcl_basicShapes"
      }
    }
    Assets {
      Id: 1784866382590929844
      Name: "Decal Letters 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_letters_001"
      }
    }
    Assets {
      Id: 8539981025625262831
      Name: "Decal Painted Lines 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_lines_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
