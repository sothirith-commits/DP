.class public final Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

.field public static carInstance:Landroid/car/Car;

.field public static propertyManager:Landroid/car/hardware/property/CarPropertyManager;

.field public static virtualCarInstance:Lcom/openos/virtualcar/VirtualCar;

.field public static final virtualHandler:Landroid/os/Handler;

.field public static virtualPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

.field public static final virtualReadyListener:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$virtualReadyListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualHandler:Landroid/os/Handler;

    new-instance v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$virtualReadyListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$virtualReadyListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualReadyListener:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$virtualReadyListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindVirtualPropertyManager()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualCarInstance:Lcom/openos/virtualcar/VirtualCar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/openos/virtualcar/VirtualCar;->getVirtualCarManager()Lcom/openos/virtualcar/VirtualCarPropertyManager;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lcom/openos/virtualcar/VirtualCarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_2

    :goto_1
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_2
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, v1

    :goto_3
    check-cast v0, Lcom/openos/virtualcar/VirtualCarPropertyManager;

    sput-object v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    return-void
.end method

.method public static ensurePropertyManager(Landroid/app/Application;)Z
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->propertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->carInstance:Landroid/car/Car;

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    sput-object v3, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->carInstance:Landroid/car/Car;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget p0, Lkotlin/Result;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->carInstance:Landroid/car/Car;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/car/Car;->connect()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_2
    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->carInstance:Landroid/car/Car;

    if-eqz p0, :cond_3

    const-string v3, "property"

    invoke-virtual {p0, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    instance-of v3, p0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_4

    check-cast p0, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_2

    :cond_4
    move-object p0, v2

    :goto_2
    sput-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->propertyManager:Landroid/car/hardware/property/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    move v0, v1

    goto :goto_5

    :goto_4
    const-string v1, "S05CarControlHelper"

    const-string v3, "ensurePropertyManager failed"

    invoke-static {v1, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v2, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->propertyManager:Landroid/car/hardware/property/CarPropertyManager;

    sput-object v2, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->carInstance:Landroid/car/Car;

    :goto_5
    return v0
.end method

.method public static ensureVirtualPropertyManager(Landroid/content/Context;)Z
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualCarInstance:Lcom/openos/virtualcar/VirtualCar;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualReadyListener:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$virtualReadyListener$1;

    sget-object v2, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualHandler:Landroid/os/Handler;

    invoke-static {p0, v2}, Lcom/openos/virtualcar/VirtualCar;->createVirtualCar(Lcom/openos/virtualcar/VirtualServiceReadyListener;Landroid/os/Handler;)Lcom/openos/virtualcar/VirtualCar;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualCarInstance:Lcom/openos/virtualcar/VirtualCar;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->bindVirtualPropertyManager()V

    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move v0, v1

    goto :goto_3

    :goto_2
    const-string v1, "ensureVirtualPropertyManager failed"

    const-string v2, "S05CarControlHelper"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[S05-CTRL] ensureVirtualPropertyManager failed error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    sput-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualCarInstance:Lcom/openos/virtualcar/VirtualCar;

    :goto_3
    return v0
.end method

.method public static formatHex(I)Ljava/lang/String;
    .locals 4

    sget v0, Lkotlin/UInt;->$r8$clinit:I

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p0, 0x10

    invoke-static {p0}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v0, v1, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntProperty(Landroid/app/Application;II)Ljava/lang/Integer;
    .locals 7

    const-string v0, " result="

    const-string v1, "S05CarControlHelper"

    const-string v2, " area="

    const-string v3, "[S05-CTRL] getIntProperty success id="

    const-string v4, "getIntProperty success, id="

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->ensurePropertyManager(Landroid/app/Application;)Z

    move-result p0

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->propertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    move-object p0, v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, p0

    goto :goto_4

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getIntProperty failed, id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[S05-CTRL] getIntProperty failed id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v5
.end method

.method public static getSeatHeatingLevel(Landroid/app/Application;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    :cond_0
    const p1, 0x1540050b

    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getIntProperty(Landroid/app/Application;II)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static normalizeAirMode(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public static normalizeWindMode(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    goto/16 :goto_a

    :cond_1
    :goto_0
    const/4 v1, 0x2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    goto/16 :goto_a

    :cond_3
    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    goto/16 :goto_a

    :cond_5
    :goto_2
    const/4 v2, 0x4

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_7

    goto :goto_a

    :cond_7
    :goto_3
    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    goto :goto_a

    :cond_9
    :goto_4
    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_b

    goto :goto_a

    :cond_b
    :goto_5
    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_d

    goto :goto_a

    :cond_d
    :goto_6
    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_a

    :cond_f
    :goto_7
    if-nez p0, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_a

    :cond_11
    :goto_8
    if-nez p0, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_a

    :cond_13
    :goto_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static setFanSpeed(Landroid/app/Application;I)Z
    .locals 2

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    const p1, 0x35400101

    invoke-static {p0, p1, v0, v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    const v1, 0x35400109

    invoke-static {p0, v1, v0, p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result p0

    return p0
.end method

.method public static setIntProperty(Landroid/app/Application;III)Z
    .locals 8

    const-string v0, "[S05-CTRL] setIntProperty success id="

    const-string v1, "setIntProperty success, id="

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->ensurePropertyManager(Landroid/app/Application;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "setIntProperty request, id="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " area="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "S05CarControlHelper"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[S05-CTRL] setIntProperty request id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->propertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    goto :goto_2

    :goto_1
    const-string v0, "setIntProperty failed, id="

    invoke-static {p1, p2, v0, v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "[S05-CTRL] setIntProperty failed id="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v5, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public static setManualAirMode(Landroid/app/Application;IZ)Z
    .locals 11

    const v0, 0x35400104

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result v0

    const-string v2, "sendAirConditionerCommand action=setColdHeatVentMode data="

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setColdHeatVentMode request, mode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S05CarControlHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[S05-CTRL] setColdHeatVentMode mode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    const-string v4, "setColdHeatVentMode"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CarS05InfoUtil"

    const-string v5, " data="

    const-string v6, "action"

    sget-object v7, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    const/4 v8, 0x0

    if-nez v7, :cond_0

    :goto_0
    move v7, v8

    goto/16 :goto_4

    :cond_0
    :try_start_0
    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "data"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v10}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v4

    sget-object v6, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x44e

    const/16 v9, 0xbbc

    invoke-static {v6, v9, v4}, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->create(IILjava/util/HashMap;)Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    move-result-object v4

    check-cast v7, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {v7, v4}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->callMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v7, v4, Lcom/tinnove/polymericservice/base/model/WTResultModel;->code:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    const-string v9, "000000"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " code="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    iget-object v2, v4, Lcom/tinnove/polymericservice/base/model/WTResultModel;->code:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v6

    :goto_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/tinnove/polymericservice/base/model/WTResultModel;->msg:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v2, v6

    :goto_3
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    iget-object v6, v4, Lcom/tinnove/polymericservice/base/model/WTResultModel;->data:Ljava/lang/Object;

    :cond_4
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendAirConditionerCommand failed: action=setColdHeatVentMode data="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :goto_4
    if-eqz p2, :cond_5

    const/4 p1, 0x2

    const p2, 0x35400102

    invoke-static {p0, p2, v1, p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result p0

    goto :goto_5

    :cond_5
    move p0, v1

    :goto_5
    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v8

    :goto_6
    return v1
.end method

.method public static setTemperature(Landroid/app/Application;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;FLcom/deepalhome/launcher/carinfo/AirConditionState;)Z
    .locals 12

    const-string v0, "setVirtualFloatProperty failed, id=895484165 area="

    const-string v1, "position"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "currentState"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p3, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p2, v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p2

    sub-float/2addr p2, v2

    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr p2, v1

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    add-float/2addr p2, v2

    const-string v1, " error="

    const-string v2, "[S05-CTRL] setVirtualFloatProperty failed id="

    const-string v3, "[S05-CTRL] setVirtualFloatProperty success id="

    const-string v4, "setVirtualFloatProperty success, id="

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->ensureVirtualPropertyManager(Landroid/content/Context;)Z

    move-result p0

    const/4 v5, 0x0

    if-nez p0, :cond_1

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "setVirtualFloatProperty request, id="

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x35600105

    invoke-static {v6}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " area="

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " value="

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v9, "S05CarControlHelper"

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[S05-CTRL] setVirtualFloatProperty request id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-eqz p0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {p0, v6, p1, v10}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->setValue(IILjava/lang/Number;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p3, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, v9, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move p3, v5

    goto :goto_5

    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p3, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, v9, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_5
    move v5, p3

    :goto_6
    return v5
.end method

.method public static setVirtualIntProperty(Landroid/app/Application;III)Z
    .locals 11

    const-string v0, " error="

    const-string v1, "[S05-CTRL] setVirtualIntProperty failed id="

    const-string v2, "setVirtualIntProperty failed, id="

    const-string v3, "[S05-CTRL] setVirtualIntProperty success id="

    const-string v4, "setVirtualIntProperty success, id="

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->ensureVirtualPropertyManager(Landroid/content/Context;)Z

    move-result p0

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return v5

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "setVirtualIntProperty request, id="

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " area="

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value="

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v8, "S05CarControlHelper"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[S05-CTRL] setVirtualIntProperty request id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->virtualPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-eqz p0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, p1, p2, v9}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->setValue(IILjava/lang/Number;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    goto/16 :goto_3

    :goto_1
    invoke-static {p1, p2, v2, v6, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v8, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-static {p1, p2, v2, v6, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->formatHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v8, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v5
.end method

.method public static setWindDirection(Landroid/app/Application;I)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->normalizeWindMode(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontWindModeRaw:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->normalizeWindMode(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const/4 v2, 0x1

    if-ne v1, p1, :cond_2

    return v2

    :cond_2
    and-int/lit8 v1, v1, 0x7

    and-int/lit8 p1, p1, 0x7

    xor-int/2addr p1, v1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v3, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x35400107

    invoke-static {p0, v3, v2, v1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_a
    :goto_2
    return v0
.end method


# virtual methods
.method public final setMode(Landroid/app/Application;Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)Z
    .locals 5

    const-string p0, "mode"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->INNER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    if-eq p2, p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->OUTER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    if-ne p2, p0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setMode recycle request, mode="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "S05CarControlHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[S05-CTRL] setMode recycle request mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, 0x13400504

    const v4, 0x35400108

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x4

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setWindDirection(Landroid/app/Application;I)Z

    move-result v1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x6

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setWindDirection(Landroid/app/Application;I)Z

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setWindDirection(Landroid/app/Application;I)Z

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setWindDirection(Landroid/app/Application;I)Z

    move-result v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setWindDirection(Landroid/app/Application;I)Z

    move-result v1

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v4, v0, v2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result v1

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v4, v0, v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result v1

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v3, v2, v2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setIntProperty(Landroid/app/Application;III)Z

    move-result v1

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v3, v0, v2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setIntProperty(Landroid/app/Application;III)Z

    move-result v1

    goto :goto_0

    :pswitch_9
    invoke-static {p1, p2, v1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setManualAirMode(Landroid/app/Application;IZ)Z

    move-result v1

    goto :goto_0

    :pswitch_a
    const p0, 0x35400104

    invoke-static {p1, p0, v0, v2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setVirtualIntProperty(Landroid/app/Application;III)Z

    move-result v1

    goto :goto_0

    :pswitch_b
    invoke-static {p1, v2, v1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setManualAirMode(Landroid/app/Application;IZ)Z

    move-result v1

    goto :goto_0

    :pswitch_c
    invoke-static {p1, v0, v0}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->setManualAirMode(Landroid/app/Application;IZ)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
