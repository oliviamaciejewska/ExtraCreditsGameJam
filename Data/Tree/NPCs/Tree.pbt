Name: "NPCs"
RootId: 9787735103849288229
Objects {
  Id: 7463917392399593418
  Name: "MaleNpc"
  Transform {
    Location {
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
  ParentId: 9787735103849288229
  ChildIds: 8254974738547099476
  ChildIds: 17257581478401778198
  UnregisteredParameters {
    Overrides {
      Name: "cs:ObjectId"
      Int: 0
    }
    Overrides {
      Name: "cs:Team"
      Int: 0
    }
    Overrides {
      Name: "cs:ObjectId:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:Team:isrep"
      Bool: true
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 7463917392399593418
    SubobjectId: 14795800877796877819
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
    WasRoot: true
  }
}
Objects {
  Id: 17257581478401778198
  Name: "ClientContext"
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
  ParentId: 7463917392399593418
  ChildIds: 798238904252760866
  ChildIds: 5198406885957080254
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
    SelfId: 17257581478401778198
    SubobjectId: 5025781033435867175
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
  }
}
Objects {
  Id: 5198406885957080254
  Name: "ManDown"
  Transform {
    Location {
      Z: 96.8764648
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17257581478401778198
  ChildIds: 11891130014429100301
  ChildIds: 7777348550202640830
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
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 11966979374252212530
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
    SelfId: 5198406885957080254
    SubobjectId: 16349302869364711055
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
  }
}
Objects {
  Id: 7777348550202640830
  Name: "effect"
  Transform {
    Location {
      Z: -39.03125
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5198406885957080254
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 17069761961690292468
    }
    TeamSettings {
    }
    Vfx {
    }
  }
  InstanceHistory {
    SelfId: 7777348550202640830
    SubobjectId: 13920246703225750415
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
  }
}
Objects {
  Id: 11891130014429100301
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
  ParentId: 5198406885957080254
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  AudioInstance {
    AudioAsset {
      Id: 3358108258735476445
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
    SelfId: 11891130014429100301
    SubobjectId: 1136543645111989052
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
  }
}
Objects {
  Id: 798238904252760866
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
  ParentId: 17257581478401778198
  UnregisteredParameters {
    Overrides {
      Name: "cs:isHealed"
      Bool: false
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
      Id: 12948914675988167720
    }
  }
  InstanceHistory {
    SelfId: 798238904252760866
    SubobjectId: 11660942993259137299
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
  }
}
Objects {
  Id: 8254974738547099476
  Name: "HealTrigger"
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
  ParentId: 7463917392399593418
  ChildIds: 8931137293967469289
  UnregisteredParameters {
  }
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
    SelfId: 8254974738547099476
    SubobjectId: 15586844076518198629
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
  }
}
Objects {
  Id: 8931137293967469289
  Name: "HealServer"
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
  ParentId: 8254974738547099476
  UnregisteredParameters {
  }
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
    SelfId: 8931137293967469289
    SubobjectId: 15074060187008770264
    InstanceId: 7397314333878786003
    TemplateId: 6665071061032983263
  }
}
