.class public final Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

.field public static dismissRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

.field public static final mainHandler:Landroid/os/Handler;

.field public static mediaPlayer:Landroid/media/MediaPlayer;

.field public static presentation:Lcom/deepalhome/launcher/hud/s05utils/HudPresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismissRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismissRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    sput-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismissPresentation()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->setHudVideoAreaEnabled(Z)V

    sget-object v1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByStartupVideo$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByStartupVideo$1;-><init>(Z)V

    invoke-static {v1}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->wakeHud()V

    :goto_0
    return-void
.end method

.method public static dismissPresentation()V
    .locals 2

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->presentation:Lcom/deepalhome/launcher/hud/s05utils/HudPresentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->presentation:Lcom/deepalhome/launcher/hud/s05utils/HudPresentation;

    return-void
.end method

.method public static setHudVideoAreaEnabled(Z)V
    .locals 5

    const-string v0, "com.incall.interactive.service.proxy.IDoubleInteractiveProxy"

    const/4 v1, 0x0

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_1

    :goto_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lkotlin/Result$Failure;

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "obtain(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p0, 0x33

    const/4 v0, 0x0

    invoke-interface {v1, p0, v2, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw p0

    :goto_2
    return-void
.end method
