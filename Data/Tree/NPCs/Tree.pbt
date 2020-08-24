Name: "NPCs"
RootId: 9787735103849288229
Objects {
  Id: 12590039576605442748
  Name: "FemaleNpc"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9787735103849288229
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 8427878904811658107
      value {
        Overrides {
          Name: "Name"
          String: "FemaleNpc"
        }
        Overrides {
          Name: "Position"
          Vector {
            Y: 150
            Z: -150
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 8851311647763733831
    }
  }
}
