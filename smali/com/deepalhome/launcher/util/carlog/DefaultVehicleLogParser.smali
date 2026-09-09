.class public final Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/carlog/VehicleLogParser;


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;

.field public static final GEAR_CHANGED_REGEX:Lkotlin/text/Regex;

.field public static final LEGACY_CAR_STATUS_REGEX:Lkotlin/text/Regex;

.field public static final LOOKUP_TOPIC_SUFFIXES:Ljava/util/List;

.field public static final LOW_BEAM_KEYWORDS:Ljava/util/List;

.field public static final MESSAGE_PROPERTY_VALUE_REGEX:Lkotlin/text/Regex;

.field public static final OUTSIDE_TEMPERATURE_REGEX:Lkotlin/text/Regex;

.field public static final SIGNAL_VALUE_REGEX:Lkotlin/text/Regex;

.field public static final SPEED_CHANGED_REGEX:Lkotlin/text/Regex;

.field public static final TOPIC_AT_VALUE_REGEX:Lkotlin/text/Regex;

.field public static final TOPIC_SPACE_VALUE_REGEX:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->Companion:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "onChangeEvent\\(\\)\\s+([a-z_]+),\\s+changed,\\s+value\\s*=\\s*([^\\s,]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->LEGACY_CAR_STATUS_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "speed changed:\\s*([^\\s,]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->SPEED_CHANGED_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "gear\\s*=\\s*([013])"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->GEAR_CHANGED_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "OutSideTemperatureDynamicIcon.*?updateTemp\\s*=\\s*([+-]?[0-9]+(?:\\.[0-9]+)?)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->OUTSIDE_TEMPERATURE_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Signal#([A-Z0-9_]+).*?value\\s*[=:]\\s*([^\\s,]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->SIGNAL_VALUE_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?:receive|(?:\\d+\\s+)?send)\\s+(.+?),\\s+value\\s*:\\s*CarPropertyValue\\{id=(0x[0-9a-fA-F]+).*?value=(.*?),\\s*time=.*?ext=(.*)\\}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->MESSAGE_PROPERTY_VALUE_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "([A-Za-z][A-Za-z0-9_-]+(?:/[A-Za-z0-9_-]+)+)@(.+?)$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->TOPIC_AT_VALUE_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "null:\\s*([A-Za-z][A-Za-z0-9_-]+(?:/[A-Za-z0-9_-]+)+)\\s+(.+?)\\s*$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->TOPIC_SPACE_VALUE_REGEX:Lkotlin/text/Regex;

    const-string v0, "LOW_BEAM"

    const-string v1, "light_status_low_beam"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->LOW_BEAM_KEYWORDS:Ljava/util/List;

    const-string v0, "/Req"

    const-string v1, "/Set"

    const-string v2, "/req"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->LOOKUP_TOPIC_SUFFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;
    .locals 10

    and-int/lit8 v0, p5, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p3

    :goto_0
    and-int/lit8 p3, p5, 0x10

    if-eqz p3, :cond_1

    move-object p4, p2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeLookupTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->resolveField(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-static {p1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeLookupTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, v1

    :goto_1
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->resolveField(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p3

    goto :goto_2

    :cond_3
    move-object p3, v1

    :cond_4
    :goto_2
    if-eqz p3, :cond_6

    iget-object p5, p3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;->canonicalTopic:Ljava/lang/String;

    if-nez p5, :cond_5

    goto :goto_3

    :cond_5
    move-object p0, p5

    :cond_6
    :goto_3
    new-instance p5, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    if-eqz p3, :cond_7

    iget-object v0, p3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;->propertyId:Ljava/lang/Long;

    move-object v5, v0

    goto :goto_4

    :cond_7
    move-object v5, v1

    :goto_4
    if-eqz p3, :cond_8

    iget-object v0, p3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;->description:Ljava/lang/String;

    move-object v8, v0

    goto :goto_5

    :cond_8
    move-object v8, v1

    :goto_5
    const/4 v0, 0x0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v6, v0

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    iget-object p1, p3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;->carInfoId:Ljava/lang/Long;

    goto :goto_6

    :cond_9
    move-object p1, v1

    :goto_6
    invoke-static {p0, p4}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeCarInfoValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget-object p3, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;->Companion:Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "0x"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0, v0}, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    new-instance p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_7
    move-object v3, p1

    goto :goto_8

    :cond_b
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_7

    :goto_8
    invoke-static {p5}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-object p0
.end method

.method public static normalizeCarInfoValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Light/LowBeam"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "\u8fd1\u5149\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p1, "\u8fd1\u5149\u5173\u95ed"

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static normalizeLookupTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->LOOKUP_TOPIC_SUFFIXES:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-static {v1, p0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "\""

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;
    .locals 22

    move-object/from16 v6, p1

    const-string v0, "log"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->Companion:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser$Companion;->mightParse(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->LEGACY_CAR_STATUS_REGEX:Lkotlin/text/Regex;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v9}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    :cond_1
    :goto_0
    move-object v0, v8

    goto/16 :goto_3

    :cond_2
    const-string v0, "car_speed"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v12, "DrivingInfo/Speed"

    const/16 v16, 0x1c

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    const-string v0, "gear_position"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v12, "DrivingInfo/Gear"

    const/16 v16, 0x1c

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->SPEED_CHANGED_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    const-string v12, "DrivingInfo/Speed"

    const/16 v16, 0x1c

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->GEAR_CHANGED_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    const-string v12, "DrivingInfo/Gear"

    const/16 v16, 0x1c

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->LOW_BEAM_KEYWORDS:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v1, v7}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "value = "

    const-string v1, ""

    invoke-static {v6, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const-string v1, " "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v7, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const-string v0, "1"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u8fd1\u5149\u5f00\u542f"

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_b
    const-string v0, "0"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8fd1\u5149\u5173\u95ed"

    goto :goto_1

    :goto_2
    const-string v1, "Light/LowBeam"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->OUTSIDE_TEMPERATURE_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    move-object v0, v8

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, ".0"

    invoke-static {v1, v0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "Sensor/OutsideTemperature"

    const/16 v5, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->SIGNAL_VALUE_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-nez v0, :cond_10

    :goto_5
    move-object v0, v8

    goto/16 :goto_a

    :cond_10
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v9}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_11
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "toUpperCase(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v10

    if-eqz v3, :cond_12

    goto :goto_6

    :cond_12
    move-object v0, v8

    :goto_6
    if-nez v0, :cond_13

    goto :goto_7

    :cond_13
    sget-object v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->signalByName$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;

    goto :goto_8

    :cond_14
    :goto_7
    move-object v0, v8

    :goto_8
    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;->topic:Ljava/lang/String;

    if-nez v0, :cond_15

    goto :goto_9

    :cond_15
    move-object v1, v0

    :cond_16
    :goto_9
    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_17

    return-object v0

    :cond_17
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->TOPIC_AT_VALUE_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v9}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    :cond_18
    :goto_b
    move-object v0, v8

    goto :goto_c

    :cond_19
    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    goto :goto_c

    :cond_1a
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->TOPIC_SPACE_VALUE_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v9}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_b

    :cond_1b
    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->createTopicResult$default(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_1c

    return-object v0

    :cond_1c
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->MESSAGE_PROPERTY_VALUE_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v6, v7}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-nez v0, :cond_1e

    :cond_1d
    :goto_d
    move-object v0, v8

    goto/16 :goto_13

    :cond_1e
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeLookupTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v3, v9}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    check-cast v4, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v4, v5}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1f

    goto :goto_d

    :cond_1f
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x4

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0x"

    invoke-static {v3, v11}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v3, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->resolveField(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeLookupTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_e

    :cond_20
    move-object v0, v8

    :goto_e
    if-eqz v0, :cond_22

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry;->resolveField(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    :cond_21
    move-object v14, v0

    goto :goto_f

    :cond_22
    move-object v14, v8

    :goto_f
    new-instance v15, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    if-eqz v14, :cond_23

    iget-object v0, v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;->description:Ljava/lang/String;

    move-object v7, v0

    goto :goto_10

    :cond_23
    move-object v7, v8

    :goto_10
    if-eqz v14, :cond_25

    iget-object v0, v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;->canonicalTopic:Ljava/lang/String;

    if-nez v0, :cond_24

    goto :goto_11

    :cond_24
    move-object v5, v0

    goto :goto_12

    :cond_25
    :goto_11
    move-object v5, v2

    :goto_12
    move-object v0, v15

    move-object v2, v9

    move-object v4, v10

    move-object/from16 p0, v5

    move-object/from16 v5, p1

    move-object v6, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_26

    iget-object v0, v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;->carInfoId:Ljava/lang/Long;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_26
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;->normalizeCarInfoValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;->Companion:Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v10}, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-static {v15}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0xa

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    :goto_13
    if-eqz v0, :cond_27

    return-object v0

    :cond_27
    return-object v8
.end method
