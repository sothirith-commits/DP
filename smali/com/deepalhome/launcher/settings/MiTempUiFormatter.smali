.class public final Lcom/deepalhome/launcher/settings/MiTempUiFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    invoke-direct {v0}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayName(Lcom/deepalhome/mitemp/MiTempDevice;)Ljava/lang/String;
    .locals 2

    const-string v0, "device"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static displayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "rawName"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "LYWSD03MMC"

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Xiaomi Thermometer 2"

    :cond_0
    return-object p0
.end method
