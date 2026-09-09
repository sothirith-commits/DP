.class public final Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

.field public static final allBranches:Ljava/util/Set;

.field public static final allPowertrains:Ljava/util/Set;

.field public static final bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

.field public static final branchesWithCockpitControls:Ljava/util/Set;

.field public static final branchesWithGloveBox:Ljava/util/Set;

.field public static final branchesWithoutEz6:Ljava/util/LinkedHashSet;

.field public static final branchesWithoutS05:Ljava/util/LinkedHashSet;

.field public static final cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

.field public static final cockpitWidePalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

.field public static final layoutPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

.field public static final mediaPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

.field public static final powertrainsWithFuelCap:Ljava/util/Set;

.field public static final prototypes:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->allBranches:Ljava/util/Set;

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->allPowertrains:Ljava/util/Set;

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->SL03:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    sget-object v2, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S7:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    sget-object v3, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S07:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->EZ6:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithGloveBox:Ljava/util/Set;

    invoke-static {v0, v5}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;)Ljava/util/LinkedHashSet;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutEz6:Ljava/util/LinkedHashSet;

    invoke-static {v0, v4}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutS05:Ljava/util/LinkedHashSet;

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->HYBRID:Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->powertrainsWithFuelCap:Ljava/util/Set;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    const-string v1, "media"

    const-string v2, "Media"

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->mediaPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    const-string v1, "cockpit"

    const-string v2, "Seat"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitWidePalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    const-string v1, "body"

    const-string v2, "Vehicle body"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    const-string v1, "layout"

    const-string v2, "Layout"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->layoutPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    new-instance v2, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/16 v8, 0x8

    packed-switch v4, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->layoutPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    invoke-static {v4, v3, v5, v7, v6}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutEz6:Ljava/util/LinkedHashSet;

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-static {v6, v7}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutEz6:Ljava/util/LinkedHashSet;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_3
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutEz6:Ljava/util/LinkedHashSet;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_4
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-static {v6}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_5
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-static {v6}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_6
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithGloveBox:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_7
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->bodyPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutEz6:Ljava/util/LinkedHashSet;

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-static {v6, v7}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;)Ljava/util/LinkedHashSet;

    move-result-object v6

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->powertrainsWithFuelCap:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;Ljava/util/Set;)V

    move-object v3, v4

    goto/16 :goto_1

    :pswitch_8
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_9
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_a
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_b
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_c
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_d
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_e
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_f
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_10
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_11
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    invoke-static {v4, v3, v5, v7, v6}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_12
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutS05:Ljava/util/LinkedHashSet;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_13
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitCompactPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_14
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitWidePalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithoutS05:Ljava/util/LinkedHashSet;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_15
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->cockpitWidePalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->branchesWithCockpitControls:Ljava/util/Set;

    invoke-static {v4, v3, v5, v6, v8}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_16
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->mediaPalette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    invoke-static {v4, v3, v5, v7, v6}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_17
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-static {v4, v3, v7, v7, v5}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_18
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-static {v4, v3, v7, v7, v5}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    goto :goto_1

    :pswitch_19
    sget-object v4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-static {v4, v3, v7, v7, v5}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    move-result-object v3

    :goto_1
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    sput-object v1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->prototypes:Ljava/util/LinkedHashMap;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrototype$default(Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;I)Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->allBranches:Ljava/util/Set;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    sget-object p4, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->allPowertrains:Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;Ljava/util/Set;)V

    return-object p0
.end method

.method public static isSupported(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "branch"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->prototypes:Ljava/util/LinkedHashMap;

    invoke-static {v0, p0}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedBranches:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedPowertrains:Ljava/util/Set;

    if-nez p0, :cond_1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, p1

    :cond_3
    return v0
.end method
