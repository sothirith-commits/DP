.class public final Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;

.field public static carAudioManager:Landroid/car/media/CarAudioManager;

.field public static carInstance:Landroid/car/Car;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureCarAudioManager(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carInstance:Landroid/car/Car;

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    sput-object v3, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carInstance:Landroid/car/Car;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget p0, Lkotlin/Result;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carInstance:Landroid/car/Car;

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
    sget-object p0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carInstance:Landroid/car/Car;

    if-eqz p0, :cond_3

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    instance-of v3, p0, Landroid/car/media/CarAudioManager;

    if-eqz v3, :cond_4

    check-cast p0, Landroid/car/media/CarAudioManager;

    goto :goto_2

    :cond_4
    move-object p0, v2

    :goto_2
    sput-object p0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carAudioManager:Landroid/car/media/CarAudioManager;
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
    sput-object v2, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carInstance:Landroid/car/Car;

    sput-object v2, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    const-string v1, "S05CarVolumeHelper"

    const-string v2, "ensureCarAudioManager failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return v0
.end method

.method public static getGroupVolume(Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 3

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->ensureCarAudioManager(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/car/media/CarAudioManager;->getGroupVolume(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGroupVolume failed, groupId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S05CarVolumeHelper"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static setGroupVolume(Landroid/content/Context;II)Z
    .locals 3

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->ensureCarAudioManager(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz p0, :cond_1

    const/16 v1, 0x14

    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, v0}, Landroid/car/media/CarAudioManager;->setGroupVolume(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGroupVolume failed, groupId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " volume="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S05CarVolumeHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v0
.end method
