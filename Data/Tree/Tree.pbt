Name: "Root"
RootId: 4781671109827199097
Objects {
  Id: 4781671109827199097
  Name: "Root"
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
  ChildIds: 7367735074338159388
  ChildIds: 13141648567393240325
  ChildIds: 14713340454944924967
  ChildIds: 12932394556429894334
  ChildIds: 18134902209994698387
  ChildIds: 9787735103849288229
  ChildIds: 3435171065999402693
  ChildIds: 11728788508854794070
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  Folder {
  }
}
Objects {
  Id: 11728788508854794070
  Name: "BasicPlayerRifle"
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
  ParentId: 4781671109827199097
  ChildIds: 3815989432447979028
  ChildIds: 17368701980889169863
  ChildIds: 5977127781664055585
  ChildIds: 842624304956820923
  ChildIds: 7585229978289168596
  UnregisteredParameters {
    Overrides {
      Name: "cs:EnableAim"
      Bool: true
    }
    Overrides {
      Name: "cs:AimBinding"
      String: "ability_secondary"
    }
    Overrides {
      Name: "cs:AimActiveStance"
      String: "2hand_rifle_stance"
    }
    Overrides {
      Name: "cs:AimWalkSpeedPercentage"
      Float: 0.5
    }
    Overrides {
      Name: "cs:AimZoomDistance"
      Int: 100
    }
    Overrides {
      Name: "cs:HeadshotDamage"
      Int: 100
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Equipment {
    SocketName: "right_prop"
    PickupTrigger {
      SelfId: 5977127781664055585
    }
    Weapon {
      ProjectileAssetRef {
        Id: 9826710443425479508
      }
      MuzzleFlashAssetRef {
        Id: 13494688406900935038
      }
      TrailAssetRef {
        Id: 9023864673320310867
      }
      ImpactAssetRef {
        Id: 4931172666927145061
      }
      Muzzle {
        Location {
        }
        Rotation {
        }
      }
      AnimationSet: "2hand_rifle_stance"
      OutOfAmmoSfxAssetRef {
        Id: 11699728284197091108
      }
      ReloadSfxAssetRef {
        Id: 2784719997322153021
      }
      ImpactProjectileAssetRef {
        Id: 13982241523304647605
      }
      BeamAssetRef {
        Id: 841534158063459245
      }
      BurstCount: 1
      BurstDuration: 4
      Range: 100000
      ImpactPlayerAssetRef {
        Id: 11362767970982602413
      }
      ReticleType {
        Value: "mc:ereticletype:crosshair"
      }
      MaxAmmo: 60
      AmmoType: "rounds"
      IsFiniteAmmo: true
      MultiShot: 1
      ProjectileSpeed: 20000
      ProjectileLifeSpan: 10
      ProjectileGravity: 1
      ProjectileLength: 100
      ProjectileRadius: 4
      SpreadMin: 1
      SpreadMax: 90
      SpreadDecreaseSpeed: 6
      SpreadIncreasePerShot: 2
      SpreadPenaltyPerShot: 1.5
      DefaultAbility {
        SelfId: 3815989432447979028
      }
      ReloadAbility {
        SelfId: 17368701980889169863
      }
      Damage: 15
      WeaponTrajectoryMode {
        Value: "mc:eweapontrajectorymode:muzzletolooktarget"
      }
    }
  }
  InstanceHistory {
    SelfId: 11728788508854794070
    SubobjectId: 14514439793178878267
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
    WasRoot: true
  }
}
Objects {
  Id: 7585229978289168596
  Name: "ServerContext"
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
  ParentId: 11728788508854794070
  ChildIds: 14490801571822177036
  ChildIds: 13627685536493725581
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
}
Objects {
  Id: 13627685536493725581
  Name: "WeaponDamageServerShoot"
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
  ParentId: 7585229978289168596
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 10940781301666939278
    }
  }
}
Objects {
  Id: 14490801571822177036
  Name: "WeaponAimServer_1"
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
  ParentId: 7585229978289168596
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 5271215216143708871
    }
  }
}
Objects {
  Id: 842624304956820923
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
  ParentId: 11728788508854794070
  ChildIds: 738231868344608986
  ChildIds: 14968374834606108107
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
    SelfId: 842624304956820923
    SubobjectId: 6924631055937723350
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 14968374834606108107
  Name: "Scripts"
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
  ParentId: 842624304956820923
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Scripts"
  }
  InstanceHistory {
    SelfId: 14968374834606108107
    SubobjectId: 11822785259099290534
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 738231868344608986
  Name: "Client Art"
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
  ParentId: 842624304956820923
  ChildIds: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 738231868344608986
    SubobjectId: 7031835285298888375
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 15404593794560931438
  Name: "Geo"
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
  ParentId: 738231868344608986
  ChildIds: 12418148440820868461
  ChildIds: 4109125395694050643
  ChildIds: 2042266350588223161
  ChildIds: 17313392666105852063
  ChildIds: 1258598003752300284
  ChildIds: 3880345171467213588
  ChildIds: 14784064833233187646
  ChildIds: 18032680721179916881
  ChildIds: 16240269365137966505
  ChildIds: 7813677741096052311
  ChildIds: 12870825123480757249
  ChildIds: 15648379244780991807
  ChildIds: 16435029767905930434
  ChildIds: 6939654309613552374
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 15404593794560931438
    SubobjectId: 13718172714785316867
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 6939654309613552374
  Name: "Trigger - Rear"
  Transform {
    Location {
      X: 9.52880859
      Y: -2.48977121e-05
      Z: 7.81673908
    }
    Rotation {
      Yaw: -90
      Roll: 10.0530453
    }
    Scale {
      X: 0.0110827358
      Y: 0.0295748301
      Z: 0.0530300215
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.149
        G: 0.149
        B: 0.149
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 16965777294932964901
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 6939654309613552374
    SubobjectId: 857438497383371931
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 16435029767905930434
  Name: "Modern Weapon Accessory - Rail 01"
  Transform {
    Location {
      X: 29.2020073
      Y: -5.64502478
      Z: 13.8066206
    }
    Rotation {
      Roll: -89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 13442965192408425307
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 16435029767905930434
    SubobjectId: 10357247155940457135
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 15648379244780991807
  Name: "Modern Weapon Accessory - Rail 01"
  Transform {
    Location {
      X: 29.2020073
      Y: 5.64531612
      Z: 13.8066206
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 13442965192408425307
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 15648379244780991807
    SubobjectId: 12863009602878677842
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 12870825123480757249
  Name: "Modern Weapon - Grip 01"
  Transform {
    Location {
      X: 2.79868603
      Y: -2.48977121e-05
      Z: 5.86524868
    }
    Rotation {
      Pitch: -19.9999943
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 13155471131385409602
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 12870825123480757249
    SubobjectId: 15651972807665906284
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 7813677741096052311
  Name: "Modern Weapon - Magazine 01"
  Transform {
    Location {
      X: 23.1359062
      Y: -1.72683176e-05
      Z: -4.01969242
    }
    Rotation {
      Pitch: 16.2499886
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.0423114114
        G: 0.258182913
        B: 0.644479871
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 3702191406046426907
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 6183130606669934264
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 7813677741096052311
    SubobjectId: 560526180343197754
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 16240269365137966505
  Name: "Modern Weapon - Stock 01"
  Transform {
    Location {
      X: -2.22470856
      Y: -2.48977121e-05
      Z: 15.5089273
    }
    Rotation {
    }
    Scale {
      X: 1.13179314
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.205078766
        G: 0.205078766
        B: 0.205078766
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 499697514733272876
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 16240269365137966505
    SubobjectId: 10000709062367679428
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 18032680721179916881
  Name: "Modern Weapon Accessory - Rail 01"
  Transform {
    Location {
      X: 3.33459187
      Y: -2.48977121e-05
      Z: 19.5140018
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 0.89708668
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 13442965192408425307
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 18032680721179916881
    SubobjectId: 10513744063498759228
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 14784064833233187646
  Name: "Modern Weapon Accessory - Rail 02"
  Transform {
    Location {
      X: 27.399662
      Y: -2.48977121e-05
      Z: 13.7886019
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12637801335342129827
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 14784064833233187646
    SubobjectId: 11998484085123376467
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 3880345171467213588
  Name: "Modern Weapon - Gas Cylinder 01"
  Transform {
    Location {
      X: 27.3357468
      Y: -2.48977121e-05
      Z: 13.7886019
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.205078766
        G: 0.205078766
        B: 0.205078766
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 7024490427461832088
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 3880345171467213588
    SubobjectId: 6805326379772874105
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 1258598003752300284
  Name: "Modern Weapon - Barrel Tip 01"
  Transform {
    Location {
      X: 52.6301041
      Y: -2.48977121e-05
      Z: 13.7886019
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Trim:color"
      Color {
        R: 0.09375
        G: 0.09375
        B: 0.09375
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 8307003537298922985
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 1258598003752300284
    SubobjectId: 8854025335477008529
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 17313392666105852063
  Name: "Modern Weapon - Body 01"
  Transform {
    Location {
      X: 13.5848665
      Y: -2.48977121e-05
      Z: 13.7886019
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.205078766
        G: 0.205078766
        B: 0.205078766
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Trim:color"
      Color {
        R: 0.205078766
        G: 0.205078766
        B: 0.205078766
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 3702191406046426907
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.0423114114
        G: 0.258182913
        B: 0.644479871
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 13077624968254610965
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 17313392666105852063
    SubobjectId: 11235680560625362674
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 2042266350588223161
  Name: "Modern Weapon - Sight Forward 02"
  Transform {
    Location {
      X: 50.9217682
      Y: -2.48977121e-05
      Z: 19.4132023
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 6045540826292531006
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 2042266350588223161
    SubobjectId: 8646690808617683156
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 4109125395694050643
  Name: "Modern Weapon Accessory - Rail 02"
  Transform {
    Location {
      X: 53.3851547
      Y: -2.48977121e-05
      Z: 14.1252508
    }
    Rotation {
      Yaw: 179.999954
      Roll: 179.999954
    }
    Scale {
      X: 0.959740639
      Y: 0.782231212
      Z: 1
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12637801335342129827
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 4109125395694050643
    SubobjectId: 5957746430471883582
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 12418148440820868461
  Name: "Modern Weapon - Sight Rear 01"
  Transform {
    Location {
      X: 1.5038271
      Y: -2.48977121e-05
      Z: 19.4978199
    }
    Rotation {
    }
    Scale {
      X: 1.14191353
      Y: 0.992392719
      Z: 1.20455921
    }
  }
  ParentId: 15404593794560931438
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 9117384065423546074
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 12418148440820868461
    SubobjectId: 14411097836080034560
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 5977127781664055585
  Name: "PickupTrigger"
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
  ParentId: 11728788508854794070
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  InstanceHistory {
    SelfId: 5977127781664055585
    SubobjectId: 4133080813203224396
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 17368701980889169863
  Name: "ReloadAbility"
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
  ParentId: 11728788508854794070
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Ability {
    IsEnabled: true
    KeyBinding: "ability_ult"
    CastPhaseSettings {
      Duration: 0.6
      CanMove: true
      CanJump: true
      CanRotate: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:aim"
      }
    }
    ExecutePhaseSettings {
      Duration: 0.15
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
      CanMove: true
      CanJump: true
      CanRotate: true
      PreventOtherAbilities: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:none"
      }
    }
    Animation: "2hand_rifle_reload_magazine"
    KeyBinding_v2 {
      Value: "mc:egameaction:extraaction_03"
    }
  }
  InstanceHistory {
    SelfId: 17368701980889169863
    SubobjectId: 11142652575818721706
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 3815989432447979028
  Name: "AttackAbility"
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
  ParentId: 11728788508854794070
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Ability {
    IsEnabled: true
    KeyBinding: "ability_primary"
    CastPhaseSettings {
      Duration: 0.03
      CanMove: true
      CanJump: true
      CanRotate: true
      PreventOtherAbilities: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:aim"
      }
    }
    ExecutePhaseSettings {
      Duration: 0.1
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
      Duration: 0.01
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
      CanMove: true
      CanJump: true
      CanRotate: true
      PreventOtherAbilities: true
      IsTargetDataUpdated: true
      Facing_V2 {
        Value: "mc:eabilitysetfacing:none"
      }
    }
    Animation: "2hand_rifle_shoot"
    KeyBinding_v2 {
      Value: "mc:egameaction:primaryaction"
    }
  }
  InstanceHistory {
    SelfId: 3815989432447979028
    SubobjectId: 6871858875729270905
    InstanceId: 11079301955009945878
    TemplateId: 589569617274327960
  }
}
Objects {
  Id: 3435171065999402693
  Name: "StaticObjects"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "StaticObjects"
  }
}
Objects {
  Id: 9787735103849288229
  Name: "NPCs"
  Transform {
    Location {
      X: 3850
      Z: 1850
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "NPCs"
  }
}
Objects {
  Id: 18134902209994698387
  Name: "Terrain"
  Transform {
    Location {
      Y: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Terrain {
    Material {
      Id: 8713249409843689929
    }
    VoxelSize: 100
    OctreeDepth: 5
    GeneratorID: "DEPRECATED"
  }
}
Objects {
  Id: 12932394556429894334
  Name: "Land_and_Skybox"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Land_and_Skybox"
  }
}
Objects {
  Id: 14713340454944924967
  Name: "Third Person Camera Settings"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  ChildIds: 4226120016796708080
  ChildIds: 724324913679364851
  ChildIds: 15349947930373506642
  UnregisteredParameters {
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
  Id: 15349947930373506642
  Name: "StaticPlayerEquipmentRifle"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14713340454944924967
  TemplateInstance {
    ParameterOverrideMap {
      key: 16657464430720987128
      value {
        Overrides {
          Name: "Name"
          String: "StaticPlayerEquipmentRifle"
        }
        Overrides {
          Name: "cs:EquipmentTemplate"
          AssetReference {
            Id: 589569617274327960
          }
        }
      }
    }
    TemplateAsset {
      Id: 7951922219611549709
    }
  }
}
Objects {
  Id: 724324913679364851
  Name: "Client Context"
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
  ParentId: 14713340454944924967
  ChildIds: 3567959178173361743
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 3567959178173361743
  Name: "Third Person Camera"
  Transform {
    Location {
      X: 3850
      Z: 2350
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 724324913679364851
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Camera {
    UseAsDefault: true
    AttachToLocalPlayer: true
    InitialDistance: 400
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
      Y: 60
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:lookangle"
    }
    MinPitch: -89
    MaxPitch: 89
    DoesPositionOffsetSpring: true
  }
}
Objects {
  Id: 4226120016796708080
  Name: "Third Person Player Settings"
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
  ParentId: 14713340454944924967
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Settings {
    IsDefault: true
    PlayerMovementSettings {
      WalkSpeed: 640
      MaxAcceleration: 1800
      WalkableFloorAngle: 44
      JumpMaxCount: 1
      JumpVelocity: 900
      GroundFriction: 8
      GravityScale: 1.9
      MaxSwimSpeed: 420
      Buoyancy: 1
      TouchForceFactor: 1
      BrakingDecelerationFlying: 600
      MaxFlightSpeed: 600
      MovementControlMode {
        Value: "mc:emovementcontrolmode:lookrelative"
      }
      LookControlMode {
        Value: "mc:elookcontrolmode:relative"
      }
      FacingMode {
        Value: "mc:efacingmode:faceaimwhenactive"
      }
      DefaultRotationRate: 540
      SlideRotationRate: 20
      LookAtCursorProjectionPlane {
        Value: "mc:eprojectionplane:xy"
      }
      MountedMaxAcceleration: 1800
      MountedWalkSpeed: 960
      MountedJumpMaxCount: 1
      MountedJumpVelocity: 900
      HeadVisibleToSelf: true
      IsSlideEnabled: true
      IsCrouchEnabled: true
      IsJumpEnabled: true
      CanMoveForward: true
      CanMoveBackward: true
      CanMoveLeft: true
      CanMoveRight: true
      AbilityAimMode {
        Value: "mc:eabilityaimmode:viewrelative"
      }
      AppearanceChannelingTime: 2
      MountChannelingTime: 2
      FlipOnMultiJump: true
    }
  }
}
Objects {
  Id: 13141648567393240325
  Name: "SpawnPoints"
  Transform {
    Location {
      X: 3850
      Y: 300
      Z: 1900
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "SpawnPoints"
  }
}
Objects {
  Id: 7367735074338159388
  Name: "Game Settings"
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
  ParentId: 4781671109827199097
  ChildIds: 2393982453413112798
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Settings {
    IsDefault: true
    GameSettings {
      RagdollOnDeath: true
      ChatMode {
        Value: "mc:echatmode:allonly"
      }
    }
  }
}
Objects {
  Id: 2393982453413112798
  Name: "Team Settings"
  Transform {
    Location {
      X: 4100
      Y: 700
      Z: 1850
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7367735074338159388
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Settings {
    IsDefault: true
    TeamSettings {
      TeamMode_v2 {
        Value: "mc:eteammode:ffa"
      }
    }
  }
}
