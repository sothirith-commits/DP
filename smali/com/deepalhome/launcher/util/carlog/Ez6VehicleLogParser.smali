.class public final Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/carlog/VehicleLogParser;


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$Companion;

.field public static final EZ6_AC_STATUS_REGEX:Lkotlin/text/Regex;

.field public static final EZ6_TEMPERATURE_REGEX:Lkotlin/text/Regex;

.field public static final SIGNAL_NAME_REGEX:Lkotlin/text/Regex;

.field public static final SIGNAL_VALUE_REGEX:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->Companion:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$Companion;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Signal#([A-Z0-9_]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->SIGNAL_NAME_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "value\\s*=\\s*([^\\s,]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->SIGNAL_VALUE_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(AC/Status(?:/(?:Front|Rear))?)@([^\\s,]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->EZ6_AC_STATUS_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(AC/Temperature(?:/Front(?:Left|Right)?)?)@([^\\s,]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->EZ6_TEMPERATURE_REGEX:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEz6CarStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/carinfo/CarStatus;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "frontDefrostOn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$FrontDefrostOn;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "acWindSpeed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$WindSpeed;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "acWindDirection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$WindDirection;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "seatVent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$SeatVent;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "seatHeating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$SeatHeating;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "elecPowerPercent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;-><init>(IF)V

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "windowStatus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;-><init>(IF)V

    goto :goto_1

    :sswitch_7
    const-string v0, "rearDefrostOn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$RearDefrostOn;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_1

    :sswitch_8
    const-string v0, "acMode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$Mode;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_1

    :sswitch_9
    const-string v0, "airCleanerModeOn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$SeatVent;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_1

    :sswitch_a
    const-string v0, "airRecycleMode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_a
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$SeatVent;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x74f504d4 -> :sswitch_a
        -0x553899f2 -> :sswitch_9
        -0x54e2271b -> :sswitch_8
        -0x529a4922 -> :sswitch_7
        -0x427a1bfe -> :sswitch_6
        -0x3edf0c5b -> :sswitch_5
        0x1653ae2d -> :sswitch_4
        0x350de45a -> :sswitch_3
        0x40536b55 -> :sswitch_2
        0x4c03bf1d -> :sswitch_1
        0x70e477f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static buildSignalCarStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/carinfo/CarStatus;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "GW_TPMS_RRTYREPRESSURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "DRIVINGINFO_BRAKEPEDAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$BrakePedal;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "GW_TPMS_RFTYREPRESSURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontRight;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "GW_TPMS_LRTYREPRESSURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearLeft;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_1

    :sswitch_4
    const-string v0, "GW_TPMS_LFTYREPRESSURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontLeft;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_1

    :sswitch_5
    const-string v0, "SENSOR_OUTSIDEAIRQUALITY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Sensor$InnerAQI;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_1

    :sswitch_6
    const-string v0, "SENSOR_INSIDEAIRQUALITY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Sensor$InnerAQI;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_1

    :sswitch_7
    const-string v0, "ENERGYINFO_SOCPERCENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;-><init>(IF)V

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x66238a79 -> :sswitch_7
        -0x5e02b4aa -> :sswitch_6
        -0x554a1d8b -> :sswitch_5
        -0x248d28db -> :sswitch_4
        0x9972531 -> :sswitch_3
        0x26a590df -> :sswitch_2
        0x36204ed9 -> :sswitch_1
        0x54c9deeb -> :sswitch_0
    .end sparse-switch
.end method

.method public static carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;->Companion:Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
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


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "log"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->EZ6_AC_STATUS_REGEX:Lkotlin/text/Regex;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v7, v6}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "null"

    invoke-static {v0, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x1867567

    if-eq v8, v9, :cond_9

    const v9, 0x1fc68a9f

    if-eq v8, v9, :cond_7

    const v9, 0x5acf5f34

    if-eq v8, v9, :cond_5

    goto :goto_2

    :cond_5
    const-string v8, "AC/Status/Rear"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    const-wide/32 v7, 0x200006b

    invoke-static {v1, v7, v8, v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v8, "AC/Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    const-wide/32 v7, 0x2000001

    invoke-static {v1, v7, v8, v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v8, "AC/Status/Front"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    :goto_2
    goto :goto_0

    :cond_a
    const-wide/32 v7, 0x200006a

    invoke-static {v1, v7, v8, v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_b

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xe

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-object v1

    :cond_b
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->EZ6_TEMPERATURE_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v2, v3}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    const-wide/32 v7, 0x2000078

    const-wide/32 v9, 0x2000077

    if-nez v0, :cond_c

    :goto_4
    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v11

    check-cast v11, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v11, v6}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v4, "AC/Temperature/FrontLeft"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {v1, v9, v10, v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :sswitch_1
    const-string v4, "AC/Temperature/Front"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_5

    :sswitch_2
    const-string v4, "AC/Temperature/FrontRight"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {v1, v7, v8, v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :sswitch_3
    const-string v4, "AC/Temperature"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_10
    invoke-static {v1, v9, v10, v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v4

    invoke-static {v1, v7, v8, v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    filled-new-array {v4, v0}, [Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_6
    move-object v12, v0

    :goto_7
    if-eqz v12, :cond_11

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v16, 0xe

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    :cond_11
    const-string v0, "carStatusTriples content: ["

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const-string v4, "Ez6VehicleLogParser"

    const-wide/32 v13, 0x897ff7

    const-string v15, ", error="

    if-nez v0, :cond_13

    :cond_12
    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_19

    :cond_13
    const-string v0, "carStatusTriples content: "

    const/4 v5, 0x6

    invoke-static {v2, v0, v3, v3, v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    const-string v11, "["

    const/4 v12, 0x4

    invoke-static {v2, v11, v0, v3, v12}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const-string v11, "]"

    invoke-static {v2, v11, v5}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, v6

    if-ltz v0, :cond_12

    if-gt v5, v0, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "substring(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v11, Lcom/google/gson/JsonArray;

    invoke-virtual {v5, v11, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/JsonElement;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v11, Lcom/google/gson/JsonObject;

    if-eqz v12, :cond_15

    goto :goto_a

    :cond_15
    const/4 v11, 0x0

    :goto_a
    if-eqz v11, :cond_16

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    :goto_b
    if-nez v11, :cond_17

    :goto_c
    const/4 v12, 0x0

    goto :goto_13

    :cond_17
    const-string v12, "left"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    if-eqz v12, :cond_19

    instance-of v3, v12, Lcom/google/gson/JsonNull;

    if-nez v3, :cond_18

    goto :goto_d

    :cond_18
    const/4 v12, 0x0

    :goto_d
    if-eqz v12, :cond_19

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_19
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_1a

    goto :goto_c

    :cond_1a
    const-string v12, "middle"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    if-eqz v12, :cond_1c

    instance-of v6, v12, Lcom/google/gson/JsonNull;

    if-nez v6, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v12, 0x0

    :goto_f
    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_1c
    const/4 v6, 0x0

    :goto_10
    if-nez v6, :cond_1d

    goto :goto_c

    :cond_1d
    const-string v12, "right"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    if-eqz v11, :cond_1f

    instance-of v12, v11, Lcom/google/gson/JsonNull;

    if-nez v12, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v11, 0x0

    :goto_11
    if-eqz v11, :cond_1f

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v11

    goto :goto_12

    :cond_1f
    const/4 v11, 0x0

    :goto_12
    new-instance v12, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;

    invoke-direct {v12, v3, v6, v11}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_13
    if-eqz v12, :cond_20

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_9

    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, v11, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v7, -0x6291a828

    iget-object v8, v11, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->middle:Ljava/lang/String;

    if-eq v12, v7, :cond_29

    const v7, -0x3011280e    # -8.014259E9f

    if-eq v12, v7, :cond_24

    const v7, 0x56e2d64e

    if-eq v12, v7, :cond_22

    goto/16 :goto_16

    :cond_22
    :try_start_1
    const-string v7, "currentSpeed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_16

    :cond_23
    invoke-static {v1, v13, v14, v8}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v0, v7}, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;-><init>(F)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_18

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_24
    const-string v7, "acTemperature"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_16

    :cond_25
    iget v0, v11, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->right:I

    invoke-static {v8}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_26

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_15

    :cond_26
    const/16 v8, 0x10

    if-eq v0, v8, :cond_28

    const/16 v8, 0x40

    if-eq v0, v8, :cond_27

    invoke-static {v1, v9, v10, v7}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    const-wide/32 v13, 0x2000078

    invoke-static {v1, v13, v14, v7}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v7

    filled-new-array {v0, v7}, [Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_27
    const-wide/32 v12, 0x2000078

    invoke-static {v1, v12, v13, v7}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_28
    invoke-static {v1, v9, v10, v7}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_15
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_18

    :cond_29
    const-string v7, "gearPosition"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    :goto_16
    iget-object v0, v11, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->buildEz6CarStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/carinfo/CarStatus;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_18

    :cond_2a
    const/4 v0, 0x0

    goto :goto_18

    :cond_2b
    const-wide/32 v12, 0x897ff8

    invoke-static {v1, v12, v13, v8}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v7, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Gear;

    invoke-direct {v7, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Gear;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_18

    :goto_17
    sget v7, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_18
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2c

    sget-object v7, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Failed to parse carStatus triple: left="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v11, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", middle="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v11, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->middle:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v4, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->w$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-wide/32 v7, 0x2000078

    const-wide/32 v13, 0x897ff7

    goto/16 :goto_14

    :cond_2d
    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    const/16 v25, 0x0

    const/16 v26, 0xc

    const/16 v24, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    iget-object v3, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;->carInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    if-nez v3, :cond_2e

    iget-object v3, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;->carStatuses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_12

    :cond_2e
    :goto_19
    if-eqz v0, :cond_2f

    return-object v0

    :cond_2f
    const-string v0, "Signal#"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_30

    :goto_1a
    const/4 v0, 0x0

    goto/16 :goto_24

    :cond_30
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->SIGNAL_NAME_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v2, v3}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_1a

    :cond_31
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->SIGNAL_VALUE_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, v2, v3}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_1a

    :cond_32
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v5}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :try_start_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_21

    :sswitch_4
    const-string v0, "DRIVINGINFO_GEAR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_21

    :cond_33
    const-wide/32 v7, 0x897ff8

    invoke-static {v1, v7, v8, v2}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Gear;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Gear;-><init>(I)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1b
    move-object v9, v0

    goto :goto_1c

    :catchall_1
    move-exception v0

    goto/16 :goto_22

    :cond_34
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_1b

    :goto_1c
    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    goto/16 :goto_23

    :sswitch_5
    const-string v0, "AC_PASSENGERTEMPERATURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_21

    :cond_35
    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1d
    move-object v8, v1

    goto :goto_1e

    :cond_36
    const-wide/32 v7, 0x2000078

    invoke-static {v1, v7, v8, v3}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1d

    :goto_1e
    const/16 v12, 0xe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    goto/16 :goto_23

    :sswitch_6
    const-string v0, "AC_DRIVERTEMPERATURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_21

    :cond_37
    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1f
    move-object/from16 v18, v1

    goto :goto_20

    :cond_38
    invoke-static {v1, v9, v10, v3}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1f

    :goto_20
    const/16 v22, 0xe

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_23

    :sswitch_7
    const-string v0, "DRIVINGINFO_SPEED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    const-wide/32 v7, 0x897ff7

    invoke-static {v1, v7, v8, v2}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->carInfo$default(Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;JLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;-><init>(F)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_23

    :cond_39
    :goto_21
    invoke-static {v6, v2}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;->buildSignalCarStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/carinfo/CarStatus;

    move-result-object v0

    if-eqz v0, :cond_3a

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v12, 0xd

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_23

    :cond_3a
    const/4 v0, 0x0

    goto :goto_23

    :goto_22
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_23
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3b

    sget-object v3, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v5, "Failed to parse Signal#: name="

    const-string v7, ", value="

    invoke-static {v5, v6, v7, v2, v15}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/deepalhome/launcher/util/DebugLogger;->w$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_3c

    const/4 v0, 0x0

    :cond_3c
    check-cast v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    :goto_24
    if-eqz v0, :cond_3d

    return-object v0

    :cond_3d
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a315119 -> :sswitch_3
        -0x4a192245 -> :sswitch_2
        0x1f9758e1 -> :sswitch_1
        0x60b21488 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc12f03d -> :sswitch_7
        0x1775114f -> :sswitch_6
        0x5af62097 -> :sswitch_5
        0x7c3d0eb9 -> :sswitch_4
    .end sparse-switch
.end method
