.class public final Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

.field private static final specs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/deepalhome/launcher/navigation/model/GridItemType;",
            "Lcom/deepalhome/launcher/navigation/model/GridItemSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

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

    move-object v4, v0

    check-cast v4, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->RAIL:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_a
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_b
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_c
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_d
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_e
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_f
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_11
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto/16 :goto_1

    :pswitch_12
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto :goto_1

    :pswitch_13
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto :goto_1

    :pswitch_14
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto :goto_1

    :pswitch_15
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto :goto_1

    :pswitch_16
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v9, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto :goto_1

    :pswitch_17
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto :goto_1

    :pswitch_18
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    goto :goto_1

    :pswitch_19
    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V

    :goto_1
    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    sput-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->specs:Ljava/util/Map;

    return-void

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

.method public static synthetic createId$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createId(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    new-instance p4, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    const/4 p7, 0x0

    invoke-direct {p4, p7, p7, p7}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, v4}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createId(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Ljava/lang/String;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native createId(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Ljava/lang/String;
.end method

.method public final createItem(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItem;
    .locals 7

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "schema"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "id"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object p0

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p3}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForRail(I)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p2

    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget v0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    invoke-virtual {p2, p3, v0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForSlot(II)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p2

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-boolean v4, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->removable:Z

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p5

    move-object v2, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/navigation/model/GridItem;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZLcom/deepalhome/launcher/navigation/model/GridItemPayload;)V

    return-object p2
.end method

.method public final native defaultMandatoryItems(Lcom/deepalhome/launcher/navigation/model/GridSchema;)Ljava/util/List;
.end method

.method public final native functionPaletteItems()Ljava/util/List;
.end method

.method public final native spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;
.end method
