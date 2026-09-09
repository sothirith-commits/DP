.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;-><init>()V

    return-void
.end method

.method public static resolveFrontAirConditionEnabledForUi(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/AirConditionState;->getFrontWindLevel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/AirConditionState;->isFrontOn()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->Companion:Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->statusRaw:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;->parseEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    return-object v0
.end method
