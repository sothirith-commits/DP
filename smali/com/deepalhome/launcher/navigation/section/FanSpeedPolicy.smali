.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

.field public static volatile lastNonZeroLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    const/4 v0, 0x3

    sput v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->lastNonZeroLevel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rememberNonZeroLevel(I)V
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    sput p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->lastNonZeroLevel:I

    :cond_0
    return-void
.end method

.method public static resolveCommittedLevel(Lcom/deepalhome/launcher/carinfo/AirConditionState;Ljava/lang/String;I)I
    .locals 4

    const-string v0, "state"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/AirConditionState;->getFrontWindLevel()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0, v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    if-lez p0, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->rememberNonZeroLevel(I)V

    :cond_0
    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/AirConditionState;->isFrontOn()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->Companion:Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->statusRaw:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;->parseEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    if-lez p0, :cond_4

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->rememberNonZeroLevel(I)V

    goto :goto_0

    :cond_3
    invoke-static {p2, v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    :cond_4
    :goto_0
    return p0

    :cond_5
    :goto_1
    return v2
.end method

.method public static resolveRememberedNonZeroLevel(ILjava/lang/String;)I
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->rememberNonZeroLevel(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    sget p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->lastNonZeroLevel:I

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez p1, :cond_3

    move-object v2, v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_4
    invoke-static {p0, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    :goto_2
    return p0
.end method
