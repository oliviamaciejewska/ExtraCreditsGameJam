Name: "NPCs"
RootId: 9787735103849288229
Objects {
  Id: 9622855111227761071
  Name: "FemaleDown"
  Transform {
    Location {
      Z: -7.84521484
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9787735103849288229
  ChildIds: 1179559369467349935
  ChildIds: 1447091773297629509
  ChildIds: 18267134111416833265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 1747552468990175730
      }
    }
    Overrides {
      Name: "ma:Shared_Detail2:id"
      AssetReference {
        Id: 17934413431809113164
      }
    }
    Overrides {
      Name: "ma:Shared_Detail2:smart"
      Bool: false
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 17699712224716592003
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    AnimatedMesh {
      AnimationStance: "unarmed_"
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_death"
        PlaybackRate: 1
        ShouldLoop: true
      }
    }
  }
  InstanceHistory {
    SelfId: 9622855111227761071
    SubobjectId: 9172434884057068309
    InstanceId: 13283106220232685392
    TemplateId: 10748291417894530507
    WasRoot: true
  }
}
Objects {
  Id: 18267134111416833265
  Name: "Heal"
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
  ParentId: 9622855111227761071
  ChildIds: 11954753007757694776
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Ability {
    IsEnabled: true
    CastPhaseSettings {
      Duration: 0.15
      CanMove: true
      CanJump: true
      CanRotate: true
      PreventOtherAbilities: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:none"
      }
    }
    ExecutePhaseSettings {
      CanMove: true
      CanJump: true
      CanRotate: true
      PreventOtherAbilities: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:aim"
      }
    }
    RecoveryPhaseSettings {
      Duration: 0.1
      CanMove: true
      CanJump: true
      CanRotate: true
      PreventOtherAbilities: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:none"
      }
    }
    CooldownPhaseSettings {
      Duration: 3
      CanMove: true
      CanJump: true
      CanRotate: true
      PreventOtherAbilities: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:none"
      }
    }
    Animation: "unarmed_use_bandage"
    KeyBinding_v2 {
      Value: "mc:egameaction:extraaction_43"
    }
  }
  InstanceHistory {
    SelfId: 18267134111416833265
    SubobjectId: 522930892998231627
    InstanceId: 13283106220232685392
    TemplateId: 10748291417894530507
  }
}
Objects {
  Id: 11954753007757694776
  Name: "ClientContext"
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
  ParentId: 18267134111416833265
  ChildIds: 15936259783926070023
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 11954753007757694776
    SubobjectId: 6856703860727678338
    InstanceId: 13283106220232685392
    TemplateId: 10748291417894530507
  }
}
Objects {
  Id: 15936259783926070023
  Name: "Heal"
  Transform {
    Location {
      X: -3850
      Z: -1842.15479
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11954753007757694776
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 12948914675988167720
    }
  }
  InstanceHistory {
    SelfId: 15936259783926070023
    SubobjectId: 2875760045261760957
    InstanceId: 13283106220232685392
    TemplateId: 10748291417894530507
  }
}
Objects {
  Id: 1447091773297629509
  Name: "HealTrigger"
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
  ParentId: 9622855111227761071
  ChildIds: 11969589473167866341
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Heal"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:capsule"
    }
  }
  InstanceHistory {
    SelfId: 1447091773297629509
    SubobjectId: 17209711156740787199
    InstanceId: 13283106220232685392
    TemplateId: 10748291417894530507
  }
}
Objects {
  Id: 11969589473167866341
  Name: "HealServer"
  Transform {
    Location {
      Z: 7.84521484
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1447091773297629509
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 13664768874240926571
    }
  }
  InstanceHistory {
    SelfId: 11969589473167866341
    SubobjectId: 6691418197863426911
    InstanceId: 13283106220232685392
    TemplateId: 10748291417894530507
  }
}
Objects {
  Id: 1179559369467349935
  Name: "Female Generic Pain Groan 02 SFX"
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
  ParentId: 9622855111227761071
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  AudioInstance {
    AudioAsset {
      Id: 11816225537595997241
    }
    AutoPlay: true
    Repeat: true
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
  InstanceHistory {
    SelfId: 1179559369467349935
    SubobjectId: 16906114632207489301
    InstanceId: 13283106220232685392
    TemplateId: 10748291417894530507
  }
}
