.class public final Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer;",
        "Lcom/google/gson/JsonDeserializer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final asBooleanOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object p1, p0

    goto :goto_2

    :goto_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_2
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object p0, p1

    :goto_3
    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private final asGridAnchorOrNull(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/navigation/model/GridAnchor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asStringOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p1

    :cond_4
    check-cast v0, Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    return-object v0
.end method

.method private final asGridItemOrNull(Lcom/google/gson/JsonElement;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Lcom/deepalhome/launcher/navigation/model/GridItem;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asGridItemTypeOrNull(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v0

    :cond_3
    const-string v1, "placement"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-direct {p0, v1, v4, p2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asPlacementOrNull(Lcom/google/gson/JsonElement;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object v5

    if-nez v5, :cond_4

    return-object v0

    :cond_4
    new-instance p2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asStringOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    move-object v3, v0

    const-string v0, "removable"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asBooleanOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_7
    move v6, v1

    :goto_2
    const-string v0, "movable"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asBooleanOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v7, v0

    goto :goto_3

    :cond_8
    move v7, v1

    :goto_3
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asPayloadOrDefault(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    move-result-object v8

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/navigation/model/GridItem;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZLcom/deepalhome/launcher/navigation/model/GridItemPayload;)V

    return-object p2
.end method

.method private final asGridItemTypeOrNull(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/navigation/model/GridItemType;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asStringOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    move-object v0, p1

    :cond_5
    check-cast v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-object v0
.end method

.method private final asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object p1, p0

    goto :goto_2

    :goto_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_2
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object p0, p1

    :goto_3
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private final asPayloadOrDefault(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/navigation/model/GridItemPayload;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    new-instance p0, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    invoke-direct {p0, v0, v0, v0}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance v1, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asStringOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    const-string v3, "label"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asStringOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v0

    :goto_3
    const-string v4, "activityName"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asStringOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-direct {v1, v2, v3, v0}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private final asPlacementOrNull(Lcom/google/gson/JsonElement;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const-string v1, "anchor"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/google/gson/JsonObject;

    if-eqz v2, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v0

    :goto_3
    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asGridAnchorOrNull(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    move-result-object v1

    const-string v3, "slotIndex"

    const-string v4, "railIndex"

    const/4 v5, 0x1

    if-nez v1, :cond_7

    if-eqz v2, :cond_5

    iget-object v1, v2, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_5

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->RAIL:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, v2, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_6

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    goto :goto_4

    :cond_6
    move-object v1, v0

    :cond_7
    :goto_4
    const-string v6, "index"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v6}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_d

    :cond_8
    if-nez v1, :cond_9

    sget-object v6, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v6, p2}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object v6

    iget-object v6, v6, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    goto :goto_5

    :cond_9
    move-object v6, v1

    :goto_5
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_c

    if-ne v6, v5, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6

    :cond_a
    move-object v6, v0

    goto :goto_6

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_c
    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v6

    :cond_d
    :goto_6
    const-string v2, "startUnit"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7

    :cond_e
    move-object v2, v0

    :goto_7
    const-string v3, "spanUnits"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_8

    :cond_f
    move-object p0, v0

    :goto_8
    if-nez v1, :cond_10

    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object p1

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    if-ne p1, v5, :cond_15

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_9

    :cond_11
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget p1, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    sub-int/2addr p0, p1

    iget p2, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    add-int/2addr p1, p2

    div-int/2addr p0, p1

    if-gez p0, :cond_12

    move p0, v1

    :cond_12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_14
    :goto_9
    invoke-virtual {p3, v1}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForRail(I)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p0

    goto :goto_c

    :cond_15
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_16
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_a

    :cond_17
    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object p0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    iget p1, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    mul-int/2addr p0, p1

    :goto_a
    invoke-virtual {p3, p0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotSpan(I)I

    move-result p0

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget p2, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    iget v0, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    add-int/2addr p2, v0

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_19
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1a
    :goto_b
    invoke-virtual {p3, v1, p0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForSlot(II)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method private final asStringOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/gson/JsonPrimitive;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/io/Serializable;

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 4

    const-string v0, "json"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeOfT"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/google/gson/JsonObject;

    if-nez p2, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;-><init>(I)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    iget-object p1, p1, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    const-string p2, "schema"

    invoke-virtual {p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    new-instance p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;

    if-eqz p2, :cond_1

    const-string v0, "slotCount"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x12

    :goto_0
    if-eqz p2, :cond_2

    const-string v1, "unitsPerSlot"

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    const/4 v2, 0x1

    if-eqz p2, :cond_3

    const-string v3, "railUnits"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asIntOrNull(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    invoke-direct {p3, v0, v1, p2}, Lcom/deepalhome/launcher/navigation/model/GridSchema;-><init>(III)V

    const-string p2, "items"

    invoke-virtual {p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    if-eqz p1, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {p0, v0, p3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->asGridItemOrNull(Lcom/google/gson/JsonElement;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :cond_6
    if-nez p2, :cond_7

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_7
    new-instance p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-direct {p0, p3, p2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;-><init>(Lcom/deepalhome/launcher/navigation/model/GridSchema;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 5

    const-string p0, "src"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "typeOfSrc"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "context"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iget v0, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "slotCount"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v0, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unitsPerSlot"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget p3, p3, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "railUnits"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p3, "schema"

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/deepalhome/launcher/navigation/model/GridItem;

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p3, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p3, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v2, p3, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    iget-object v3, v2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "anchor"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "index"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v3, v2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->startUnit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "startUnit"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v2, v2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->spanUnits:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spanUnits"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "placement"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-boolean v1, p3, Lcom/deepalhome/launcher/navigation/model/GridItem;->removable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "removable"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v1, p3, Lcom/deepalhome/launcher/navigation/model/GridItem;->movable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "movable"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object p3, p3, Lcom/deepalhome/launcher/navigation/model/GridItem;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iget-object v2, p3, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packageName"

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_1

    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_1
    iget-object v2, p3, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->label:Ljava/lang/String;

    const-string v4, "label"

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_3

    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_3
    iget-object p3, p3, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->activityName:Ljava/lang/String;

    const-string v2, "activityName"

    if-eqz p3, :cond_4

    invoke-virtual {v1, v2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-nez v3, :cond_5

    sget-object p3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v1, v2, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_5
    const-string p3, "payload"

    invoke-virtual {v0, p3, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p0, "items"

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;->serialize(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
