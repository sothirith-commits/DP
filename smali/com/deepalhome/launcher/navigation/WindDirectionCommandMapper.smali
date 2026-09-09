.class public final Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static spec(Lcom/deepalhome/launcher/navigation/WindDirectionMode;)Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;
    .locals 1

    const-string v0, "mode"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_SHIELD:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_SHIELD_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_HEAD_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_HEAD:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    :goto_0
    return-object p0
.end method
