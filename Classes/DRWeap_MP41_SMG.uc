// TODO: Adjust handling.
class DRWeap_MP41_SMG extends ROWeap_MP40_SMG
    abstract;

DefaultProperties
{
    WeaponContentClass(0)="DesertRats.DRWeap_MP41_SMG_Content"

    RoleSelectionImage(0)=Texture2D'VN_UI_Textures.WeaponTex.VC_Weap_MP40'

    Weight=4.1 // Kg, empty.
    InvIndex=`DRII_MP41_SMG

    // MAIN FIREMODE
    FiringStatesArray(0)=WeaponFiring
    WeaponFireTypes(0)=EWFT_Custom
    FireInterval(0)=+0.12 // 9mm @ 500RPM
    WeaponProjectiles(0)=class'MP40Bullet'
    Spread(0)=0.0022 // 8 MOA

    // ALT FIREMODE
    FiringStatesArray(ALTERNATE_FIREMODE)=WeaponSingleFiring
    WeaponFireTypes(ALTERNATE_FIREMODE)=EWFT_Custom
    FireInterval(ALTERNATE_FIREMODE)=+0.12
    WeaponProjectiles(ALTERNATE_FIREMODE)=class'MP40Bullet'
    Spread(ALTERNATE_FIREMODE)=0.0022 // 8 MOA

    //? AltFireModeType=ROAFT_ExtendStock

    WeaponDryFireSnd=AkEvent'WW_WEP_Shared.Play_WEP_Generic_Dry_Fire'

    PreFireTraceLength=1250 //25 Meters

    //ShoulderedSpreadMod=3.0//6.0
    //HippedSpreadMod=5.0//10.0

    //Recoil
    maxRecoilPitch=150//245//260
    minRecoilPitch=150//245//230
    maxRecoilYaw=60//100
    minRecoilYaw=-60//-100
    RecoilRate=0.09
    RecoilMaxYawLimit=500
    RecoilMinYawLimit=65035
    RecoilMaxPitchLimit=750
    RecoilMinPitchLimit=64785
    RecoilISMaxYawLimit=500
    RecoilISMinYawLimit=65035
    RecoilISMaxPitchLimit=500
    RecoilISMinPitchLimit=65035
    RecoilBlendOutRatio=0.65

    minRecoilYawAbsolute=25

    InstantHitDamageTypes(0)=class'RODmgType_MP40Bullet'
    InstantHitDamageTypes(1)=class'RODmgType_MP40Bullet'

    MuzzleFlashSocket=MuzzleFlashSocket
    MuzzleFlashPSCTemplate=ParticleSystem'FX_VN_Weapons.MuzzleFlashes.FX_VN_MuzzleFlash_1stP_SMG'
    MuzzleFlashDuration=0.33
    MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'

    WeaponExtendStockAnim=None
    WeaponRetractStockAnim=None

    EquipTime=+0.71 // 0.66 // 0.75

    StockSkelControlNames[0]=None
    StockSkelControlNames[1]=None
    //? bReverseStockControls=true

    ISFocusDepth=28

    // Ammo
    MaxAmmoCount=32
    AmmoClass=class'ROAmmo_9x19_MP40Mag'
    bUsesMagazines=true
    InitialNumPrimaryMags=4
    bPlusOneLoading=false
    bCanReloadNonEmptyMag=true
    bCanLoadStripperClip=false
    bCanLoadSingleBullet=false
    PenetrationDepth=12
    MaxPenetrationTests=3
    MaxNumPenetrations=2
    PerformReloadPct=0.85f


    PlayerViewOffset=(X=4.0,Y=4.5,Z=-2.0)//(X=1,Y=4,Z=-2)
    ZoomInRotation=(Pitch=-910,Yaw=0,Roll=2910)
    //ShoulderedTime=0.5
    ShoulderedPosition=(X=3.0,Y=2,Z=-1.25)//(X=3,Y=2,Z=-1.0)
    //ShoulderRotation=(Pitch=-300,Yaw=500,Roll=1500)

    bUsesFreeAim=true

    ZoomInTime=0.25//0.3
    ZoomOutTime=0.25//0.22
    IronSightPosition=(X=1,Y=0,Z=0)
    // RetractedStockIronSightPosition=(X=3,Y=1,Z=-1)
    RetractedStockIronSightPosition=(X=5,Y=0.5,Z=-0.1)
    RetractedStockAlignmentScale = 0.5f
    RecoilOffsetModY = 1100.f
    RecoilOffsetModZ = 1100.f
    //SwayOffsetMod = 1000.f

    // Free Aim variables
    FreeAimHipfireOffsetX=25

    SuppressionPower=5

    SwayScale=0.8//1.1

    // TODO: Single shot audio.
    //? WeaponFireSnd(ALTERNATE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_MP40.Play_WEP_MP40_Loop_3P', FirstPersonCue=AkEvent'WW_WEP_MP40.Play_WEP_MP40_Fire_Stereo_Loop')

    //? RetractedStockFrontCollisionBufferDist=7.5

    bUsingRetractedStock=false

    // TODO: Shake camera on fire mode switch?
    //? WeaponSwitchToAltFireModeAnim=M16_AutoTOsemi
    //? WeaponSwitchToDefaultFireModeAnim=M16_SemiTOauto

    WeaponFireAnim(ALTERNATE_FIREMODE)=MP40_shoot
    WeaponFireShoulderedAnim(ALTERNATE_FIREMODE)=MP40_shoot
    WeaponFireSightedAnim(ALTERNATE_FIREMODE)=MP40_iron_shoot
    WeaponIdleAnims(ALTERNATE_FIREMODE)=MP40_Shoulder_Idle
    WeaponIdleShoulderedAnims(ALTERNATE_FIREMODE)=MP40_Shoulder_Idle
    WeaponIdleSightedAnims(ALTERNATE_FIREMODE)=MP40_Iron_Idle
}
