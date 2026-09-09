.class public final Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;

.field public static volatile instance:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;


# instance fields
.field public final appContext:Landroid/content/Context;

.field public currentServicePackage:Ljava/lang/String;

.field public final mainHandler:Landroid/os/Handler;

.field public pendingOutsideText:Ljava/lang/String;

.field public pendingText:Ljava/lang/String;

.field public final reverseLoopRunnable:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;

.field public reverseLoopSpeaking:Z

.field public reverseLoopText:Ljava/lang/String;

.field public vrLogicBinder:Landroid/os/IBinder;

.field public vrServiceBound:Z

.field public final vrServiceConnection:Lorg/repackage/a/a/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->Companion:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->appContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopRunnable:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;

    new-instance p1, Lorg/repackage/a/a/a/a/b;

    invoke-direct {p1, v0, p0}, Lorg/repackage/a/a/a/a/b;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceConnection:Lorg/repackage/a/a/a/a/b;

    return-void
.end method


# virtual methods
.method public final connectSpeechService()V
    .locals 11

    const-string v0, "Failed to bind speech service: "

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->flushPendingSpeak()V

    return-void

    :cond_0
    const-string v1, "Failed to unbind speech service: "

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceBound:Z

    iget-object v3, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->appContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceConnection:Lorg/repackage/a/a/a/a/b;

    const/4 v6, 0x0

    const-string v7, "SpeechTtsHelper"

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v4, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceBound:Z

    iput-object v6, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string v1, "com.tinnove.wecarspeech"

    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string v1, "com.wt.speechserver"

    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_5

    :cond_2
    iput-object v1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->currentServicePackage:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.tinnove.vrlogic.server.VrLogicService"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_4
    invoke-virtual {v3, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to start speech service: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v8, 0x1

    :try_start_5
    invoke-virtual {v3, v2, v5, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceBound:Z

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    iput-object v6, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    iput-boolean v4, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceBound:Z

    const-string p0, "Exception while binding speech service"

    invoke-static {v7, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    return-void

    :cond_4
    :goto_5
    const-string p0, "No available speech service found"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_6
    iput-boolean v4, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceBound:Z

    iput-object v6, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    throw v0
.end method

.method public final flushPendingSpeak()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->pendingOutsideText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->pendingOutsideText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->playOutsideTts(Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->pendingText:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->pendingText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->playTts(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final isSpeechServiceReady()Z
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final playOutsideTts(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->updateOutsideSwitch(Z)V

    const/16 v2, 0x60

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->transactVoid(I)V

    const-string v2, "SpeechTtsHelper"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v4, "obtain(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v4, "com.tinnove.vrinterface.IVrLogicService"

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_1

    const/16 p1, 0x62

    invoke-interface {p0, p1, v3, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-ne p0, v0, :cond_1

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-lez p0, :cond_2

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p0, "Outside announcement transact returned false"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :goto_1
    :try_start_1
    const-string p1, "Outside announcement failed"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return v1

    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final playTts(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SpeechTtsHelper"

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "com.tinnove.vrinterface.IVrLogicService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_1

    const/16 v2, 0x1b

    invoke-interface {p0, v2, v1, v3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p0, "Normal announcement transact returned false"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :goto_1
    :try_start_1
    const-string p1, "Normal announcement failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final scheduleNextReverseLoop()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopRunnable:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopSpeaking:Z

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopText:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final transactVoid(I)V
    .locals 6

    const-string v0, "SpeechTtsHelper"

    const-string v1, "Binder call exception, code="

    const-string v2, "Binder call failed, code="

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v4, "obtain(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v4, "com.tinnove.vrinterface.IVrLogicService"

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    const/4 v4, 0x0

    invoke-interface {p0, p1, v3, v5, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :goto_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final updateOutsideSwitch(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "tinnove_voice_outofcar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to write outside speaker switch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpeechTtsHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method