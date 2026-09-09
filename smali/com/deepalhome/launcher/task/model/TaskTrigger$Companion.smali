.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final all()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->P()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;-><init>(II)V

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    new-array v3, v3, [Lcom/deepalhome/launcher/task/model/TaskTrigger;

    sget-object v4, Lcom/deepalhome/launcher/task/model/TaskTrigger$None;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$None;

    aput-object v4, v3, v1

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskTrigger$WifiConnected;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$WifiConnected;

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    aput-object p0, v3, v1

    const/4 p0, 0x4

    aput-object v0, v3, p0

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOn;

    const/4 v0, 0x5

    aput-object p0, v3, v0

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOff;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOff;

    const/4 v0, 0x6

    aput-object p0, v3, v0

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SteeringWheelButton;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$SteeringWheelButton;

    const/4 v0, 0x7

    aput-object p0, v3, v0

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$MapCardOpenMap;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$MapCardOpenMap;

    const/16 v0, 0x8

    aput-object p0, v3, v0

    const/16 p0, 0x9

    aput-object v2, v3, p0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final allForS05()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->P()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;-><init>(II)V

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/deepalhome/launcher/task/model/TaskTrigger;

    sget-object v3, Lcom/deepalhome/launcher/task/model/TaskTrigger$None;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$None;

    aput-object v3, v2, v1

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p0, v2, v1

    const/4 p0, 0x3

    aput-object v0, v2, p0

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$MapCardOpenMap;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$MapCardOpenMap;

    const/4 v0, 0x4

    aput-object p0, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final allGears()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->P()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->N()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->R()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->D()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final fromType(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger;
    .locals 4

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gear_changed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->D()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    const-string v0, "gear_changed_"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->parseGear(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;-><init>(I)V

    :goto_0
    move-object p0, p1

    goto/16 :goto_2

    :cond_1
    return-object v3

    :cond_2
    const-string v0, "speed_range_"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-static {p0, p1}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    invoke-static {p0, p1, p0}, Lkotlin/text/StringsKt__StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_4
    const/16 p0, 0x12c

    :goto_1
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    invoke-direct {p1, v1, p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;-><init>(II)V

    goto :goto_0

    :cond_5
    const-string v0, "steering_wheel_button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SteeringWheelButton;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$SteeringWheelButton;

    goto :goto_2

    :cond_6
    const-string v0, "custom_voice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "button_"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x7

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;->fromButtonType(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    move-result-object p0

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->all()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v3, v0

    :cond_a
    move-object p0, v3

    check-cast p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;

    :goto_2
    return-object p0
.end method

.method public final getButtonTypeByName(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;
    .locals 0

    const-string p0, "buttonTypeName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "instrument_switch"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;

    goto :goto_1

    :sswitch_1
    const-string p0, "heart_key_2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey2;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey2;

    goto :goto_1

    :sswitch_2
    const-string p0, "heart_key_1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey1;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey1;

    goto :goto_1

    :sswitch_3
    const-string p0, "voice_key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3cb83a2e -> :sswitch_3
        -0x1166eae8 -> :sswitch_2
        -0x1166eae7 -> :sswitch_1
        0x6d286e8c -> :sswitch_0
    .end sparse-switch
.end method

.method public final normalizeVoiceText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "text"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p0, v1, :cond_2

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final parseGear(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_b

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toUpperCase(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_9

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x50

    if-eq v0, v1, :cond_5

    const/16 v1, 0x52

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_7
    const-string v0, "N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_9
    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_b
    :goto_1
    return-object p0
.end method
