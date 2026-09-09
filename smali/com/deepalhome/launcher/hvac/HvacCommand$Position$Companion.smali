.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;
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

    invoke-direct {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;-><init>()V

    return-void
.end method

.method public static fromRaw(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
    .locals 5

    invoke-static {}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->values()[Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getRawValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_ROW:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    :cond_2
    return-object v3
.end method
