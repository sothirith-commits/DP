.class public final Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 7

    const-string v0, "state"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->Companion:Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontAirModeRaw:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_0
    invoke-static {v5}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "ventilation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :sswitch_1
    const-string v6, "cooling"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :sswitch_2
    const-string v6, "heating"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :sswitch_3
    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :goto_0
    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_6
    :goto_1
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v0, :cond_8

    sget-object v4, Lcom/deepalhome/launcher/navigation/AirConditionMode;->AUTO:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    goto :goto_7

    :cond_8
    :goto_3
    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_a

    sget-object v4, Lcom/deepalhome/launcher/navigation/AirConditionMode;->COOLING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    goto :goto_7

    :cond_a
    :goto_4
    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v4, Lcom/deepalhome/launcher/navigation/AirConditionMode;->HEATING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    goto :goto_7

    :cond_c
    :goto_5
    if-nez v5, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_e

    sget-object v4, Lcom/deepalhome/launcher/navigation/AirConditionMode;->VENTILATION:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    goto :goto_7

    :cond_e
    :goto_6
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontAutoModeRaw:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;->parseEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object v4, Lcom/deepalhome/launcher/navigation/AirConditionMode;->AUTO:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    :cond_f
    :goto_7
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x2dddaf -> :sswitch_3
        0x2f6ec3f2 -> :sswitch_2
        0x38c1b7f9 -> :sswitch_1
        0x3a1af95d -> :sswitch_0
    .end sparse-switch
.end method
