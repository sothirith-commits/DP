.class public final Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

.field public static final ez6MessagePropertyRegex:Lkotlin/text/Regex;

.field public static final hvacCallbackRegex:Lkotlin/text/Regex;

.field public static final messagePropertyRegex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "MessageProperty:\\s+(?:receive|\\d+\\s+send)\\s+(AC/(?:Status(?:/(?:Front|Rear))?|Temperature(?:/Front(?:Left|Right)?)?|WindLevel/Front|WindMode/Front|HeatingColdMode|AutoMode(?:/Front)?|FrontDefrost))(?:/Set)?,\\s+value\\s*:\\s*CarPropertyValue\\{.*?value=([^,}]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->messagePropertyRegex:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "MessageProperty\\([^)]*\\):\\s+(?:receive|\\d+\\s+send)\\s+(AC/(?:Status(?:/(?:Front|Rear))?|Temperature(?:/Front(?:Left|Right)?)?|DriverTemperature|PassengerTemperature|WindLevel/Front|WindMode/Front|HeatingColdMode|AutoMode(?:/Front)?|FrontDefrost))(?:/Set)?,\\s+value\\s*:\\s*CarPropertyValue\\{.*?value=([^,}]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->ez6MessagePropertyRegex:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Climate#(ID_TEMPERATURE_FRONTLEFT|ID_TEMPERATURE_FRONTRIGHT|ID_BLW_LEVEL_FRONT|ID_BLW_DIRECT_FRONT|ID_HOT_COLD_MODE):.*?value=([^,}]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->hvacCallbackRegex:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalizeAirModeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ventilation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "3"

    goto :goto_0

    :sswitch_1
    const-string v0, "cooling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "1"

    goto :goto_0

    :sswitch_2
    const-string v0, "heating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-string p0, "2"

    goto :goto_0

    :sswitch_3
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-string p0, "4"

    :goto_0
    return-object p0

    :cond_7
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2dddaf -> :sswitch_3
        0x2f6ec3f2 -> :sswitch_2
        0x38c1b7f9 -> :sswitch_1
        0x3a1af95d -> :sswitch_0
    .end sparse-switch
.end method

.method public static normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "\u00b0"

    invoke-static {v1, p0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static normalizeWindLevelValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static normalizeWindModeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "log"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isEZ6()Z

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->messagePropertyRegex:Lkotlin/text/Regex;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->ez6MessagePropertyRegex:Lkotlin/text/Regex;

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v3, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "0"

    const-string v6, "2"

    const-string v7, "3"

    const-string v8, "4"

    const-string v9, "1"

    const/4 v10, 0x1

    if-nez v1, :cond_2

    :goto_1
    move-object v11, v4

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v11

    check-cast v11, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v11, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v12, "AC/Temperature/FrontLeft"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x0

    const/16 v23, 0x3f7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_1
    const-string v12, "AC/Status/Rear"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x0

    const/16 v23, 0x3fb

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_2
    const-string v12, "AC/AutoMode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_4

    :sswitch_3
    const-string v12, "AC/HeatingColdMode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeAirModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v21, v9

    goto :goto_3

    :pswitch_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_2

    :pswitch_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v21, v5

    goto :goto_3

    :cond_7
    :goto_2
    move-object/from16 v21, v4

    :goto_3
    const/16 v18, 0x0

    const/16 v23, 0x27f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_4
    const-string v12, "AC/Status"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto/16 :goto_4

    :cond_8
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x0

    const/16 v23, 0x3fe

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_5
    const-string v12, "AC/Temperature/Front"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto/16 :goto_4

    :sswitch_6
    const-string v12, "AC/Status/Front"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto/16 :goto_4

    :cond_9
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x0

    const/16 v23, 0x3fd

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_7
    const-string v12, "AC/AutoMode/Front"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_4

    :cond_a
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v23, 0x2ff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_8
    const-string v12, "AC/Temperature/FrontRight"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto/16 :goto_4

    :cond_b
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v23, 0x3ef

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_9
    const-string v12, "AC/PassengerTemperature"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto/16 :goto_4

    :cond_c
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v23, 0x3ef

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_a
    const-string v12, "AC/WindLevel/Front"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_4

    :cond_d
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindLevelValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v23, 0x3df

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_b
    const-string v12, "AC/Temperature"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto/16 :goto_4

    :cond_e
    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    const/16 v20, 0x0

    const/16 v23, 0x3e7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    move-object/from16 v16, v17

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_c
    const-string v12, "AC/WindMode/Front"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_4

    :cond_f
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v23, 0x3bf

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_d
    const-string v12, "AC/FrontDefrost"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_4

    :cond_10
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v19, 0x0

    const/16 v23, 0x1ff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_e
    const-string v12, "AC/DriverTemperature"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    :goto_4
    goto/16 :goto_1

    :cond_11
    new-instance v11, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x0

    const/16 v23, 0x3f7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v23}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    if-eqz v11, :cond_12

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x7

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    :cond_12
    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->hvacCallbackRegex:Lkotlin/text/Regex;

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_13
    :goto_6
    move-object v1, v4

    goto/16 :goto_a

    :cond_14
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v10}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_9

    :sswitch_f
    const-string v2, "ID_TEMPERATURE_FRONTLEFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/16 v16, 0x3f7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_a

    :sswitch_10
    const-string v2, "ID_HOT_COLD_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_9

    :cond_15
    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeAirModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_7

    :pswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v19, v9

    goto :goto_8

    :pswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_7

    :pswitch_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_7

    :pswitch_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_7

    :cond_16
    move-object/from16 v19, v5

    goto :goto_8

    :cond_17
    :goto_7
    move-object/from16 v19, v4

    :goto_8
    const/16 v16, 0x0

    const/16 v21, 0x27f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v10, v1

    move-object/from16 v18, v0

    invoke-direct/range {v10 .. v21}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    :sswitch_11
    const-string v2, "ID_TEMPERATURE_FRONTRIGHT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    new-instance v1, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/16 v16, 0x3ef

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    :sswitch_12
    const-string v2, "ID_BLW_DIRECT_FRONT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_9

    :cond_19
    new-instance v1, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v16, 0x3bf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    :sswitch_13
    const-string v2, "ID_BLW_LEVEL_FRONT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_9
    goto/16 :goto_6

    :cond_1a
    new-instance v1, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindLevelValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/16 v16, 0x3df

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_a
    if-eqz v1, :cond_1b

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x7

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    :cond_1b
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70d78ca1 -> :sswitch_e
        -0x6d291699 -> :sswitch_d
        -0x63cf398e -> :sswitch_c
        -0x5a315119 -> :sswitch_b
        -0x57d94977 -> :sswitch_a
        -0x51e5e399 -> :sswitch_9
        -0x4a192245 -> :sswitch_8
        -0xabcb0a7 -> :sswitch_7
        -0x1867567 -> :sswitch_6
        0x1f9758e1 -> :sswitch_5
        0x1fc68a9f -> :sswitch_4
        0x3c3a58ac -> :sswitch_3
        0x4f72df5f -> :sswitch_2
        0x5acf5f34 -> :sswitch_1
        0x60b21488 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x797391a8 -> :sswitch_13
        -0x32ec7977 -> :sswitch_12
        -0x4a156fe -> :sswitch_11
        0x34dc068 -> :sswitch_10
        0x62efc041 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
