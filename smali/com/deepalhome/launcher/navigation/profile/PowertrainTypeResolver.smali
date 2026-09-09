.class public final Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static current()Lcom/deepalhome/launcher/navigation/profile/PowertrainType;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->Companion:Lcom/deepalhome/launcher/navigation/profile/PowertrainType$Companion;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->PURE_ELECTRIC:Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->HYBRID:Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
