.class public final Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCommandMode(Lcom/deepalhome/launcher/navigation/AirConditionMode;)Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;
    .locals 1

    const-string v0, "mode"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->VENTILATION:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->HEATING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->COOLING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->AUTO:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    :goto_0
    return-object p0
.end method
