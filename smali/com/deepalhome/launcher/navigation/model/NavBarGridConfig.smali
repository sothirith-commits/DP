.class public final Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;


# instance fields
.field public final items:Ljava/util/List;

.field public final schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;-><init>(I)V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;-><init>(Lcom/deepalhome/launcher/navigation/model/GridSchema;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridSchema;Ljava/util/List;)V
    .locals 1

    const-string v0, "schema"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    return-void
.end method

.method public static copy$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/util/List;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "schema"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "items"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;-><init>(Lcom/deepalhome/launcher/navigation/model/GridSchema;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final coercedItems()Ljava/util/ArrayList;
    .locals 14

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    goto/16 :goto_17

    :cond_1
    instance-of v3, v2, Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    check-cast v2, Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    :goto_1
    move-object v7, v3

    goto :goto_3

    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridItemType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v5}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v6}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_4
    move-object v5, v4

    :cond_5
    :goto_2
    move-object v3, v5

    check-cast v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    goto :goto_1

    :cond_6
    move-object v7, v4

    :goto_3
    if-nez v7, :cond_7

    goto/16 :goto_18

    :cond_7
    const-string v3, "placement"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    if-eqz v5, :cond_8

    check-cast v3, Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    :goto_4
    move-object v8, v3

    goto/16 :goto_11

    :cond_8
    instance-of v5, v3, Ljava/util/Map;

    if-eqz v5, :cond_20

    check-cast v3, Ljava/util/Map;

    const-string v5, "anchor"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_9

    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    goto :goto_5

    :cond_9
    move-object v6, v4

    :goto_5
    instance-of v8, v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    if-eqz v8, :cond_a

    check-cast v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    goto :goto_7

    :cond_a
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_d

    sget-object v8, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v8}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_b
    invoke-virtual {v9}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v9}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_6

    :cond_c
    move-object v8, v4

    :goto_6
    move-object v5, v8

    check-cast v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    goto :goto_7

    :cond_d
    move-object v5, v4

    :goto_7
    const/4 v8, 0x1

    const-string v9, "slotIndex"

    const-string v10, "railIndex"

    if-nez v5, :cond_10

    if-eqz v6, :cond_e

    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_e

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->RAIL:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    goto :goto_8

    :cond_e
    if-eqz v6, :cond_f

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_f

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    goto :goto_8

    :cond_f
    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v5, v7}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v5

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    :cond_10
    :goto_8
    const-string v11, "index"

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->asIntOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_15

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_13

    if-ne v11, v8, :cond_12

    if-eqz v6, :cond_11

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_9

    :cond_11
    move-object v6, v4

    :goto_9
    invoke-static {v6}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->asIntOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_b

    :cond_12
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_13
    if-eqz v6, :cond_14

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_a

    :cond_14
    move-object v6, v4

    :goto_a
    invoke-static {v6}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->asIntOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v11

    :cond_15
    :goto_b
    const-string v6, "startUnit"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->asIntOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "spanUnits"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->asIntOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-object v9, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/4 v10, 0x0

    if-eqz v5, :cond_1b

    if-ne v5, v8, :cond_1a

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_d

    :cond_16
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget v5, v9, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    sub-int/2addr v3, v5

    iget v6, v9, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    add-int/2addr v5, v6

    div-int/2addr v3, v5

    if-gez v3, :cond_17

    move v3, v10

    :cond_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c

    :cond_18
    move-object v3, v4

    :goto_c
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_19
    :goto_d
    invoke-virtual {v9, v10}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForRail(I)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object v3

    goto/16 :goto_4

    :cond_1a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1b
    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_f

    :cond_1c
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v6, v9, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    iget v8, v9, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    add-int/2addr v6, v8

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_e

    :cond_1d
    move-object v5, v4

    :goto_e
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_1e
    :goto_f
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_10

    :cond_1f
    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v3, v7}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v3

    iget v3, v3, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    iget v5, v9, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    mul-int/2addr v3, v5

    :goto_10
    invoke-virtual {v9, v3}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotSpan(I)I

    move-result v3

    invoke-virtual {v9, v10, v3}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForSlot(II)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object v3

    goto/16 :goto_4

    :cond_20
    move-object v8, v4

    :goto_11
    if-nez v8, :cond_21

    goto/16 :goto_18

    :cond_21
    new-instance v3, Lcom/deepalhome/launcher/navigation/model/GridItem;

    const-string v5, "id"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_22

    check-cast v5, Ljava/lang/String;

    goto :goto_12

    :cond_22
    move-object v5, v4

    :goto_12
    if-nez v5, :cond_23

    const-string v5, ""

    :cond_23
    move-object v6, v5

    const-string v5, "removable"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->asBooleanOrDefault(Ljava/lang/Object;)Z

    move-result v9

    const-string v5, "movable"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->asBooleanOrDefault(Ljava/lang/Object;)Z

    move-result v10

    const-string v5, "payload"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    if-eqz v5, :cond_24

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    :goto_13
    move-object v11, v2

    goto :goto_16

    :cond_24
    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_28

    new-instance v5, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    check-cast v2, Ljava/util/Map;

    const-string v11, "packageName"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_25

    check-cast v11, Ljava/lang/String;

    goto :goto_14

    :cond_25
    move-object v11, v4

    :goto_14
    const-string v12, "label"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_26

    check-cast v12, Ljava/lang/String;

    goto :goto_15

    :cond_26
    move-object v12, v4

    :goto_15
    const-string v13, "activityName"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v13, v2, Ljava/lang/String;

    if-eqz v13, :cond_27

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    :cond_27
    invoke-direct {v5, v11, v12, v4}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v5

    goto :goto_16

    :cond_28
    new-instance v2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    invoke-direct {v2, v4, v4, v4}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :goto_16
    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/deepalhome/launcher/navigation/model/GridItem;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZLcom/deepalhome/launcher/navigation/model/GridItemPayload;)V

    move-object v2, v3

    goto :goto_17

    :cond_29
    move-object v2, v4

    :goto_17
    move-object v4, v2

    :goto_18
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2a
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final findItem(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItem;
    .locals 2

    const-string v0, "itemId"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->coercedItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/deepalhome/launcher/navigation/model/GridItem;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->coercedItems()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/deepalhome/launcher/navigation/model/GridItem;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    iget-object v5, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v3, v5}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v5

    iget-object v7, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    iget-object v9, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eqz v8, :cond_0

    iget-object v7, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    invoke-virtual {v3, v9, v7}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createId(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :cond_0
    iget-object v3, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    invoke-virtual {v4, v9, v3}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->normalizePlacement(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object v8

    iget-boolean v9, v5, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->removable:Z

    const/16 v11, 0x22

    const/4 v10, 0x1

    invoke-static/range {v6 .. v11}, Lcom/deepalhome/launcher/navigation/model/GridItem;->copy$default(Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZI)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v8, v7, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v9, Lcom/deepalhome/launcher/navigation/model/GridItemType;->APP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v8, v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, v7, Lcom/deepalhome/launcher/navigation/model/GridItem;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iget-object v7, v7, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->packageName:Ljava/lang/String;

    if-nez v7, :cond_4

    const-string v7, ""

    :cond_4
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v0

    if-eqz v8, :cond_2

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v9, v8, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    sget-object v9, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    iget-object v8, v8, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v9, v8}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v9

    iget-boolean v9, v9, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->repeatable:Z

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    invoke-static {v5, v6, v4}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->access$ensureMandatoryItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Ljava/util/ArrayList;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/List;

    move-result-object v6

    :cond_a
    invoke-static {v5, v6, v4}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->access$filterInvalidItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Ljava/util/List;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p1, :cond_b

    invoke-static {v5, v1, v4}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->access$ensureMandatoryItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Ljava/util/ArrayList;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/List;

    move-result-object v1

    :cond_b
    invoke-static {v5, v1, v4}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->access$filterInvalidItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Ljava/util/List;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/jvm/functions/Function1;

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$normalized$normalizedItems$8;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$normalized$normalizedItems$8;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$normalized$normalizedItems$9;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$normalized$normalizedItems$9;

    aput-object v2, v1, v0

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$normalized$normalizedItems$10;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$normalized$normalizedItems$10;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->copy$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/util/List;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method

.method public final sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->coercedItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->copy$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/util/List;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method

.method public final shortcutPackages()Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->coercedItems()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v2, v2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;->APP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavBarGridConfig(schema="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
