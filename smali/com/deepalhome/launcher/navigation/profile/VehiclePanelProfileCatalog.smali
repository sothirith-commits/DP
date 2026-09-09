.class public final Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;

.field public static final profiles:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;

    new-instance v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v3, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    sget-object v4, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v3, v4}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v5, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    sget-object v6, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v5, v6}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    invoke-direct {v6, v4}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v7, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    sget-object v8, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DRAWER:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v7, v8}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v9, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;-><init>(I)V

    new-instance v11, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    sget-object v12, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v11, v12}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v12, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    sget-object v13, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v12, v13}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v13, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    sget-object v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;->VOLUME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v13, v14}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode;

    aput-object v1, v14, v10

    const/4 v1, 0x1

    aput-object v3, v14, v1

    const/4 v3, 0x2

    aput-object v5, v14, v3

    const/4 v5, 0x3

    aput-object v6, v14, v5

    const/4 v6, 0x4

    aput-object v7, v14, v6

    const/4 v7, 0x5

    aput-object v9, v14, v7

    const/4 v9, 0x6

    aput-object v11, v14, v9

    const/4 v11, 0x7

    aput-object v12, v14, v11

    const/16 v12, 0x8

    aput-object v13, v14, v12

    invoke-static {v14}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;-><init>(Ljava/util/List;)V

    new-instance v13, Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;

    new-instance v14, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    invoke-direct {v14, v2}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v2, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v15, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    sget-object v11, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FUEL_CAP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v15, v11}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v11, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    invoke-direct {v11, v4}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v4, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    invoke-direct {v4, v8}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v8, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;

    invoke-direct {v8, v10}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;-><init>(I)V

    new-instance v9, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    sget-object v7, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MIRROR_FOLD:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v9, v7}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-instance v7, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    sget-object v6, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TRUNK:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v7, v6}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    new-array v6, v12, [Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode;

    aput-object v14, v6, v10

    aput-object v2, v6, v1

    aput-object v15, v6, v3

    aput-object v11, v6, v5

    const/4 v1, 0x4

    aput-object v4, v6, v1

    const/4 v1, 0x5

    aput-object v8, v6, v1

    const/4 v1, 0x6

    aput-object v9, v6, v1

    const/4 v1, 0x7

    aput-object v7, v6, v1

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;-><init>(Ljava/util/List;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->SL03:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v2, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;

    invoke-direct {v2, v1, v0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;-><init>(Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S7:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v2, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;

    invoke-direct {v2, v1, v0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;-><init>(Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S07:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v2, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;

    invoke-direct {v2, v1, v0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;-><init>(Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v2, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;

    invoke-direct {v2, v1, v0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;-><init>(Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;)V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->EZ6:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v2, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;

    invoke-direct {v2, v1, v13}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;-><init>(Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4, v5, v0, v6}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;->profiles:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
