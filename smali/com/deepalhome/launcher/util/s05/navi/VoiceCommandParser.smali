.class public final Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;

.field public static final S05_DEST_NAME_KEYS:Ljava/util/List;

.field public static final S05_LATITUDE_KEYS:Ljava/util/List;

.field public static final S05_LONGITUDE_KEYS:Ljava/util/List;

.field public static final S05_QUERY_KEYS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;

    const-string v0, "text"

    const-string v1, "Text"

    const-string v2, "query"

    const-string v3, "Query"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_QUERY_KEYS:Ljava/util/List;

    const-string v7, "query"

    const-string v8, "Query"

    const-string v1, "poiName"

    const-string v2, "title"

    const-string v3, "name"

    const-string v4, "text"

    const-string v5, "textContent"

    const-string v6, "original_text"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_DEST_NAME_KEYS:Ljava/util/List;

    const-string v0, "Latitude"

    const-string v1, "LAT"

    const-string v2, "latitude"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_LATITUDE_KEYS:Ljava/util/List;

    const-string v0, "Longitude"

    const-string v1, "LON"

    const-string v2, "longitude"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_LONGITUDE_KEYS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractS05CoordinateValue(Lorg/json/JSONObject;Ljava/util/List;)Ljava/lang/Double;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findS05Coordinate(Ljava/lang/Object;)Lkotlin/Pair;
    .locals 18

    move-object/from16 v0, p0

    instance-of v1, v0, Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_LATITUDE_KEYS:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->extractS05CoordinateValue(Lorg/json/JSONObject;Ljava/util/List;)Ljava/lang/Double;

    move-result-object v1

    sget-object v3, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_LONGITUDE_KEYS:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->extractS05CoordinateValue(Lorg/json/JSONObject;Ljava/util/List;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpg-double v1, v8, v10

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x4195752a00000000L    # 9.0E7

    cmpg-double v1, v12, v14

    if-gtz v1, :cond_3

    div-double/2addr v4, v8

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpg-double v1, v12, v14

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v16, 0x41a5752a00000000L    # 1.8E8

    cmpg-double v1, v12, v16

    if-gtz v1, :cond_3

    div-double/2addr v6, v8

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v1, v8, v10

    if-gtz v1, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v1, v8, v14

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->findS05Coordinate(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_6
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_8

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->findS05Coordinate(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    return-object v2
.end method

.method public static findS05StringByKeys(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->findS05StringByKeys(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->findS05StringByKeys(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    return-object v2

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isS05SemanticLog(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "log"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "_SpeechClientSDK_"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessageListener"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "semantic="

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onSREvent"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
