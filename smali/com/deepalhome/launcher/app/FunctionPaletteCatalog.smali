.class public final Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;

    invoke-direct {v0}, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayItems(Lcom/deepalhome/launcher/app/FunctionPanelMode;)Ljava/util/ArrayList;
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "mode"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->functionPaletteItems()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;

    const/4 v8, 0x4

    invoke-static {v7, v6, v2, v8}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;->isSupported$default(Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/deepalhome/launcher/app/FunctionPanelMode;->EDIT:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    if-eq p0, v7, :cond_1

    sget-object v7, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v6, v7, :cond_0

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "type"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->prototypes:Ljava/util/LinkedHashMap;

    invoke-static {v5, v3}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    if-eqz v5, :cond_4

    new-instance v4, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;

    invoke-direct {v4, v3, v5}, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;)V

    :cond_4
    if-eqz v4, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;

    iget-object v5, v5, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;

    iget-object v5, v5, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    iget-object v6, v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;->groupId:Ljava/lang/String;

    sget-object v7, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionPaletteCatalog;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object v11, v9, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    iget-object v12, v11, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;->groupId:Ljava/lang/String;

    new-instance v13, Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    iget v14, v11, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;->columns:I

    iget v11, v11, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;->rowCapacity:I

    invoke-direct {v13, v14, v1, v11}, Lcom/deepalhome/launcher/app/FunctionPaletteSize;-><init>(III)V

    iget-object v9, v9, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$ResolvedPaletteItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v10, v12, v9, v13, v0}, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionPaletteSize;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;->groupTitle:Ljava/lang/String;

    invoke-direct {v3, v6, v5, v4, v8}, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/app/FunctionPaletteSize;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;

    iget-object v3, v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;->items:Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object v5, v5, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/jvm/functions/Function1;

    sget-object v3, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$sizeGroups$2;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$sizeGroups$2;

    aput-object v3, v2, v0

    sget-object v3, Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$sizeGroups$3;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionPaletteCatalog$sizeGroups$3;

    aput-object v3, v2, v1

    invoke-static {v2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v6, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "size-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->columns:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "1*"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->columns:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5, v3}, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/app/FunctionPaletteSize;Ljava/util/List;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;

    iget-object v5, v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;->items:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    if-eqz v7, :cond_e

    iget v8, v7, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    goto :goto_9

    :cond_e
    move v8, v1

    :goto_9
    rem-int/2addr v6, v8

    iget-object v8, v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;->id:Ljava/lang/String;

    if-nez v6, :cond_f

    goto :goto_d

    :cond_f
    if-eqz v7, :cond_10

    iget v9, v7, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    goto :goto_a

    :cond_10
    move v9, v1

    :goto_a
    sub-int/2addr v9, v6

    if-gez v9, :cond_11

    move v9, v0

    :cond_11
    move v6, v0

    :goto_b
    if-ge v6, v9, :cond_13

    new-instance v10, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    if-nez v7, :cond_12

    new-instance v11, Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    invoke-direct {v11, v1, v1, v1}, Lcom/deepalhome/launcher/app/FunctionPaletteSize;-><init>(III)V

    goto :goto_c

    :cond_12
    move-object v11, v7

    :goto_c
    invoke-direct {v10, v8, v4, v11, v1}, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionPaletteSize;Z)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v1

    goto :goto_b

    :cond_13
    :goto_d
    const-string v6, "id"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;->title:Ljava/lang/String;

    const-string v6, "title"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;

    invoke-direct {v6, v8, v3, v7, v5}, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/app/FunctionPaletteSize;Ljava/util/List;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;

    iget-object v1, v1, Lcom/deepalhome/launcher/app/FunctionPaletteGroup;->items:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_e

    :cond_15
    return-object v0
.end method
