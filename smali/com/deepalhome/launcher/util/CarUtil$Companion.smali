.class public final Lcom/deepalhome/launcher/util/CarUtil$Companion;
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

    invoke-direct {p0}, Lcom/deepalhome/launcher/util/CarUtil$Companion;-><init>()V

    return-void
.end method

.method public static getCarModelResId(Z)I
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->S7_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->S07_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f100007

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    const p0, 0x7f10000a

    goto :goto_1

    :cond_2
    const p0, 0x7f10000b

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    const p0, 0x7f100008

    goto :goto_1

    :cond_4
    const p0, 0x7f100009

    :goto_1
    return p0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->device$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    :catch_0
    return-object p1
.end method

.method public static isEZ6()Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->EZ6_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRealCar()Z
    .locals 2

    const-string v0, "debug.deepalhome.is_real_car"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "false"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->DEEPAL:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isS05()Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->S05_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
