.class public final Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayModel(F)Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->normalizeTemperature(F)F

    move-result p0

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.1f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    const-string v1, "substring(...)"

    if-ltz v0, :cond_0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, ".0"

    :goto_1
    new-instance v0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;

    const-string v1, "\u00b0"

    invoke-direct {v0, v3, p0, v1, v2}, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
