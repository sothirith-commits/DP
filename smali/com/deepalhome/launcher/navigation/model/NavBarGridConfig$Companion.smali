.class public final Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;-><init>()V

    return-void
.end method

.method public static final access$ensureMandatoryItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Ljava/util/ArrayList;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DRAWER:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->defaultMandatoryItems(Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v1, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public static final access$filterInvalidItems(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Ljava/util/List;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;-><init>(Lcom/deepalhome/launcher/navigation/model/GridSchema;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$2;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$3;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$3;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$4;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$4;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v1, v2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object v3, v2, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    invoke-virtual {p2, v1, v3}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->normalizePlacement(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x3b

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/navigation/model/GridItem;->copy$default(Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZI)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;->mark(Lcom/deepalhome/launcher/navigation/model/GridItem;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static asBooleanOrDefault(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "true"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    const-string v0, "false"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static asIntOrNull(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 1

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/navigation/model/GridSchema;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "shortcuts"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "schema"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    invoke-static {p0, v0, p1}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->composeCurrentProfile$default(Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;Ljava/util/List;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method
