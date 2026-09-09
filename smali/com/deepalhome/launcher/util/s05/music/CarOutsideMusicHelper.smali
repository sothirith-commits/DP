.class public final Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;

.field public static carAudioManager:Landroid/car/media/CarAudioManager;

.field public static carInstance:Landroid/car/Car;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureCarAudioManager(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sput-object p0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carInstance:Landroid/car/Car;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Landroid/car/Car;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carInstance:Landroid/car/Car;

    if-eqz p0, :cond_2

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    move-object p0, v2

    :goto_0
    instance-of v3, p0, Landroid/car/media/CarAudioManager;

    if-eqz v3, :cond_3

    check-cast p0, Landroid/car/media/CarAudioManager;

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_4

    return v0

    :cond_4
    sput-object p0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carAudioManager:Landroid/car/media/CarAudioManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    sput-object v2, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carInstance:Landroid/car/Car;

    sput-object v2, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    const-string v1, "CarOutsideMusicHelper"

    const-string v2, "ensureCarAudioManager failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_3
    return v1
.end method

.method public static getEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->ensureCarAudioManager(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Landroid/car/media/CarAudioManager;->getCarEventValue(I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "CarOutsideMusicHelper"

    const-string v2, "getEnabled failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public static setEnabled(Landroid/content/Context;Z)Z
    .locals 2

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->ensureCarAudioManager(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz p0, :cond_1

    const/16 v1, 0x66

    invoke-virtual {p0, v1, p1}, Landroid/car/media/CarAudioManager;->setCarEvent(II)V
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
    const-string p1, "CarOutsideMusicHelper"

    const-string v1, "setEnabled failed"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v0
.end method
