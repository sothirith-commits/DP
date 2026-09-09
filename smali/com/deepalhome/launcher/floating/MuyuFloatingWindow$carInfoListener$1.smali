.class public final Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;

    const-string p0, "carInfo"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_SPEED:J

    invoke-static {p1, v0, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->equalsId(Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;J)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->value:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->lastSpeed:I

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSafetyModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->handleSpeedChanged(I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
