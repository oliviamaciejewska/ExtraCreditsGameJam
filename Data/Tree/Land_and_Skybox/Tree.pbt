Name: "Land_and_Skybox"
RootId: 12932394556429894334
Objects {
  Id: 16205632502453592399
  Name: "Ambient Nature Rain Heavy 01 SFX"
  Transform {
    Location {
      X: 550
      Y: -300
      Z: 4750
    }
    Rotation {
    }
    Scale {
      X: 14.4999981
      Y: 1
      Z: 10.75
    }
  }
  ParentId: 12932394556429894334
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  AudioInstance {
    AudioAsset {
      Id: 11438986714852466939
    }
    AutoPlay: true
    Volume: 0.50506556
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 8568157196526581172
  Name: "Rain Volume VFX"
  Transform {
    Location {
      X: -350
      Y: -900
      Z: 3650
    }
    Rotation {
    }
    Scale {
      X: 100
      Y: 100
      Z: 1
    }
  }
  ParentId: 12932394556429894334
  UnregisteredParameters {
    Overrides {
      Name: "bp:Density"
      Float: 10
    }
    Overrides {
      Name: "bp:Velocity"
      Vector {
        X: 3
        Z: -19.8
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
      Id: 10056606042697039
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
}
Objects {
  Id: 8300771266388715626
  Name: "Sky Overcast 01"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12932394556429894334
  TemplateInstance {
    ParameterOverrideMap {
      key: 3795687685042435289
      value {
        Overrides {
          Name: "bp:Light Color"
          Color {
            R: 0.896159
            G: 0.840000033
            B: 1
            A: 1
          }
        }
        Overrides {
          Name: "bp:Intensity"
          Float: 0.5
        }
      }
    }
    ParameterOverrideMap {
      key: 7630610834896796816
      value {
        Overrides {
          Name: "Name"
          String: "Sky Overcast 01"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 8634359941152252359
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: -706.855103
            Y: -4824.10742
            Z: 2700
          }
        }
        Overrides {
          Name: "bp:Fog Density"
          Float: 8.54583454
        }
        Overrides {
          Name: "bp:Falloff"
          Float: 0.780920327
        }
        Overrides {
          Name: "bp:Opacity"
          Float: 1
        }
        Overrides {
          Name: "bp:Start"
          Float: 179.531418
        }
        Overrides {
          Name: "bp:Volumetric Fog"
          Bool: false
        }
        Overrides {
          Name: "bp:View Distance"
          Float: 2012.52612
        }
        Overrides {
          Name: "bp:color"
          Color {
            R: 1
            G: 0.843178809
            B: 0.63
            A: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15975492017228948184
      value {
        Overrides {
          Name: "bp:Intensity"
          Float: 2.05520129
        }
        Overrides {
          Name: "bp:Ambient Image"
          Enum {
            Value: "mc:eambientcubemapssmall:16"
          }
        }
        Overrides {
          Name: "bp:Tint Color"
          Color {
            R: 0.279999971
            G: 0.100132436
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 16290188685393925207
    }
  }
}
