.class public final Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeCurrentProfile$default(Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;Ljava/util/List;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 24

    move-object/from16 v8, p2

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object v9

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;->current()Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;->profiles:Ljava/util/Map;

    invoke-static {v0, v9}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;->defaultBottomNavPreset:Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;

    const-string v2, "preset"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "structurePolicy"

    iget-object v11, v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;->structurePolicy:Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v14, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPreset;->nodes:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v7

    move/from16 v0, v16

    move v6, v0

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v5, v0, 0x1

    if-ltz v0, :cond_1a

    check-cast v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode;

    instance-of v0, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    iget v2, v8, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    if-eqz v0, :cond_9

    check-cast v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v0, v3, :cond_7

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    move-object/from16 v0, v17

    goto :goto_3

    :cond_5
    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x18

    const/16 v21, 0x0

    move-object v1, v3

    move-object/from16 v2, p2

    move v3, v4

    move-object/from16 v4, v18

    move/from16 v22, v5

    move-object/from16 v5, v19

    move/from16 v23, v6

    move/from16 v6, v20

    move-object/from16 p0, v15

    move-object v15, v7

    move-object/from16 v7, v21

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move/from16 v0, v22

    move/from16 v3, v23

    goto/16 :goto_b

    :cond_6
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 p0, v15

    move-object v15, v7

    goto :goto_4

    :cond_7
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 p0, v15

    move-object v15, v7

    sget-object v2, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v9, v10, v11}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->isAllowed(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    invoke-direct {v0, v15, v15, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move/from16 v3, v23

    invoke-static {v1, v8, v3, v0}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->placeType(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v0

    iget v0, v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    add-int v6, v3, v0

    add-int/lit8 v0, v6, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :goto_5
    move/from16 v0, v22

    goto/16 :goto_d

    :cond_8
    move/from16 v3, v23

    goto/16 :goto_c

    :cond_9
    move/from16 v22, v5

    move v3, v6

    move-object/from16 p0, v15

    move-object v15, v7

    instance-of v0, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    check-cast v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    iget-object v2, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v9, v10}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->isSupported(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    new-instance v2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    invoke-direct {v2, v15, v15, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v0, v8, v3, v2}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->placeType(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_c

    :cond_a
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v0

    iget v0, v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    add-int v6, v3, v0

    add-int/lit8 v0, v6, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_5

    :cond_b
    instance-of v0, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;

    if-eqz v0, :cond_18

    iget-boolean v0, v11, Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;->allowShortcutApps:Z

    if-eqz v0, :cond_18

    move/from16 v0, v22

    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v5, v16

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode;

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;

    if-eqz v7, :cond_d

    :cond_c
    :goto_7
    move/from16 v6, v16

    goto :goto_8

    :cond_d
    instance-of v7, v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    if-eqz v7, :cond_f

    check-cast v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;

    iget-object v7, v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v7, v15, :cond_c

    invoke-static {v7, v9, v10, v11}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->isAllowed(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_7

    :cond_e
    sget-object v7, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    iget-object v6, v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Fixed;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v7, v6}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v6

    iget v6, v6, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    goto :goto_8

    :cond_f
    instance-of v7, v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    if-eqz v7, :cond_11

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    check-cast v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;

    iget-object v15, v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v9, v10}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->isSupported(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_7

    :cond_10
    sget-object v7, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    iget-object v6, v6, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$Function;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v7, v6}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v6

    iget v6, v6, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    :goto_8
    add-int/2addr v5, v6

    const/4 v15, 0x0

    goto :goto_6

    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_12
    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    if-gez v2, :cond_13

    move/from16 v2, v16

    :cond_13
    check-cast v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetNode$ShortcutBucket;->maxCount:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_14

    move/from16 v1, v16

    :cond_14
    if-le v1, v2, :cond_15

    goto :goto_9

    :cond_15
    move v2, v1

    :cond_16
    :goto_9
    invoke-static {v2, v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v3

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    sget-object v3, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    sget-object v4, Lcom/deepalhome/launcher/navigation/model/GridItemType;->APP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v8, v6, v2}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->placeType(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v6, v2

    move-object/from16 v17, v3

    goto :goto_a

    :goto_b
    move v6, v3

    goto :goto_d

    :cond_18
    :goto_c
    move/from16 v0, v22

    goto :goto_b

    :cond_19
    :goto_d
    move-object/from16 v15, p0

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_1a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_1b
    new-instance v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-direct {v0, v8, v12}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;-><init>(Lcom/deepalhome/launcher/navigation/model/GridSchema;Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    return-object v0
.end method

.method public static isAllowed(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 p3, 0x19

    if-eq v0, p3, :cond_3

    sget-object p3, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->isSupported(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p3, Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;->allowShortcutApps:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p3, Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;->showDrawer:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p3, Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;->showHome:Z

    :cond_3
    :goto_0
    return v1
.end method

.method public static placeType(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;)Lcom/deepalhome/launcher/navigation/model/GridItem;
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v1

    iget v2, v1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    add-int/2addr v2, p2

    iget v3, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, p0, p3}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createId(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_1
    const-string v1, "drawer"

    goto :goto_1

    :cond_2
    const-string v1, "home"

    goto :goto_1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v4

    :cond_3
    return-object v4
.end method
