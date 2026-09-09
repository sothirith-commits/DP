.class public final Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native addItem(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Z)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public static synthetic addItem$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;ZILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->addItem(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Z)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic canPlace$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->canPlace(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ZZ)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object p0

    return-object p0
.end method

.method private final native canSwap(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Z
.end method

.method private final native conflictingItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Ljava/util/List;
.end method

.method public static synthetic conflictingItems$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->conflictingItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final native coveredSeparatorIds(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Ljava/util/Set;
.end method

.method public static synthetic coveredSeparatorIds$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Set;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->coveredSeparatorIds(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic firstAvailablePlacement$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p4}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->firstAvailablePlacement(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p0

    return-object p0
.end method

.method private final native footprintIntersects(Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;)Z
.end method

.method private final native moveItem(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method private final native occupancyState(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
.end method

.method public static synthetic occupancyState$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->occupancyState(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object p0

    return-object p0
.end method

.method private final native removeItem(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method private final native replacementCandidate(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;)Lcom/deepalhome/launcher/navigation/model/GridItem;
.end method

.method private final native swapCandidate(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItem;
.end method

.method private final swapItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/model/GridItem;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    iget-object v2, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    iget-object v3, v2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    iget-object v4, v8, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x0

    if-eq v3, v4, :cond_0

    new-instance v1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    sget-object v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->ILLEGAL_TARGET:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-direct {v1, v9, v0, v2}, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;-><init>(ZLcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;)V

    return-object v1

    :cond_0
    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iget-object v4, v8, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v3, v4, v2}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->normalizePlacement(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x3b

    move-object/from16 v2, p4

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/navigation/model/GridItem;->copy$default(Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZI)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v7, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    iget-object v10, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    iget-object v7, v8, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0, v3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->copy$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/util/List;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v11, v1

    move-object v12, v2

    invoke-static/range {v10 .. v17}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->canPlace$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-eq v3, v4, :cond_4

    new-instance v1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    sget-object v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->OCCUPIED:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-direct {v1, v9, v0, v2}, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;-><init>(ZLcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;)V

    return-object v1

    :cond_4
    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object/from16 v10, p0

    move-object v11, v1

    move-object v12, v2

    invoke-static/range {v10 .. v15}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->coveredSeparatorIds$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v7, v7, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->copy$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/util/List;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v11, v1

    move-object/from16 v12, p3

    invoke-static/range {v10 .. v17}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->canPlace$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-eq v2, v3, :cond_7

    new-instance v1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    sget-object v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->OCCUPIED:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-direct {v1, v9, v0, v2}, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;-><init>(ZLcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;)V

    return-object v1

    :cond_7
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v2, p0

    move-object v3, v1

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->coveredSeparatorIds$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    move-object/from16 v4, p3

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->copy$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/util/List;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;-><init>(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-object v1
.end method


# virtual methods
.method public final native apply(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/GridEditAction;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public final native canPlace(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ZZ)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
.end method

.method public final firstAvailablePlacement(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v1, "config"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "type"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "payload"

    move-object/from16 v9, p3

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v15

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v0, v8}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v0

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    const/16 v18, 0x0

    iget-object v14, v15, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    invoke-virtual {v14}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->getRailCount()I

    move-result v0

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v13

    :goto_0
    iget-boolean v0, v13, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v11, v15

    move-object v12, v0

    move-object v4, v13

    move-object v13, v3

    move-object v7, v14

    move v14, v1

    move-object/from16 v19, v15

    move v15, v2

    invoke-static/range {v10 .. v17}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->canPlace$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    goto :goto_1

    :cond_0
    move-object/from16 v0, v18

    :goto_1
    if-eqz v0, :cond_1

    :goto_2
    move-object/from16 v18, v0

    goto :goto_5

    :cond_1
    move-object v13, v4

    move-object v14, v7

    move-object/from16 v15, v19

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_3
    move-object v7, v14

    move-object/from16 v19, v15

    iget v0, v7, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v15

    :goto_3
    iget-boolean v0, v15, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v0, :cond_6

    invoke-virtual {v15}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v1, p2

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v20, v7

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, v19

    move-object v12, v0

    move-object v2, v15

    move v15, v1

    invoke-static/range {v10 .. v17}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->canPlace$default(Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object v1

    sget-object v3, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-ne v1, v3, :cond_4

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    goto :goto_4

    :cond_4
    move-object/from16 v0, v18

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v15, v2

    move-object/from16 v7, v20

    goto :goto_3

    :cond_6
    :goto_5
    return-object v18
.end method
