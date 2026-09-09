.class public final Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontWindModeRaw:Ljava/lang/String;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontDefrostRaw:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;
    .locals 5

    const-string v0, "toLowerCase(...)"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-int p0, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :cond_2
    :goto_0
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "wind_defrost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "wind_front_defrost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "wind_shield_leg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "wind_head_leg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "wind_shield"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "10"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :sswitch_6
    const-string v2, "9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :sswitch_7
    const-string v2, "8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :sswitch_8
    const-string v2, "6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :sswitch_a
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE_FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :sswitch_b
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :sswitch_c
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :sswitch_d
    const-string v2, "wind_head"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :sswitch_e
    const-string v2, "defrost_front"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :sswitch_f
    const-string v2, "wind_leg_defrst"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :sswitch_10
    const-string v2, "wind_leg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :sswitch_11
    const-string v2, "wind_leg_defrost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FOOT_SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto/16 :goto_6

    :cond_b
    :goto_1
    if-eqz p1, :cond_12

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_c

    move v0, v2

    :cond_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_5

    :cond_d
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmpg-double p0, p0, v3

    if-nez p0, :cond_e

    move v0, v2

    :cond_e
    xor-int/lit8 p0, v0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_5

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    :sswitch_12
    const-string p1, "disabled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_2

    :sswitch_13
    const-string p1, "false"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_2

    :sswitch_14
    const-string p1, "close"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_2

    :sswitch_15
    const-string p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_2

    :sswitch_16
    const-string p1, "open"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_2

    :sswitch_17
    const-string p1, "off"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_2

    :sswitch_18
    const-string p1, "on"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_3

    :sswitch_19
    const-string p1, "opened"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_2

    :sswitch_1a
    const-string p1, "closed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_2

    :cond_10
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :sswitch_1b
    const-string p1, "enabled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    :goto_2
    goto :goto_4

    :cond_11
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_12
    :goto_4
    move-object p0, v1

    :goto_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    :cond_13
    :goto_6
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7522e805 -> :sswitch_11
        -0x4282c2a9 -> :sswitch_10
        -0x2d11a3ea -> :sswitch_f
        -0x1bd23a33 -> :sswitch_e
        -0xdd76449 -> :sswitch_d
        0x31 -> :sswitch_c
        0x32 -> :sswitch_b
        0x33 -> :sswitch_a
        0x34 -> :sswitch_9
        0x36 -> :sswitch_8
        0x38 -> :sswitch_7
        0x39 -> :sswitch_6
        0x61f -> :sswitch_5
        0x1d63d380 -> :sswitch_4
        0x30a2b986 -> :sswitch_3
        0x587ae4cf -> :sswitch_2
        0x60e29ad6 -> :sswitch_1
        0x705649ac -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5ff074bf -> :sswitch_1b
        -0x50ea1e94 -> :sswitch_1a
        -0x3c3c3797 -> :sswitch_19
        0xddf -> :sswitch_18
        0x1ad6f -> :sswitch_17
        0x34264a -> :sswitch_16
        0x36758e -> :sswitch_15
        0x5a5ddf8 -> :sswitch_14
        0x5cb1923 -> :sswitch_13
        0x10263a7c -> :sswitch_12
    .end sparse-switch
.end method
