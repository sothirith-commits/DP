.class public Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/interactive/media/IDouMediaManager;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Double-MediaProxy"

.field public static mInstance:Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;
    .locals 2

    const-class v0, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;->mInstance:Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;->mInstance:Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-class v0, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;->mInstance:Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;

    return-object v0

    :goto_1
    :try_start_1
    const-class v1, Lcom/incall/serversdk/interactive/media/DoubleMediaProxy;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.double.MEDIA_SERVICE"

    return-object p0
.end method

.method public sendMediaAlbumPath(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Double-MediaProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/media/IDouMediaManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/incall/serversdk/interactive/media/IDouMediaManager;->sendMediaAlbumPath(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "next: service is not bind"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendMediaPlayTime(Lcom/incall/serversdk/interactive/media/CaMediaTime;)V
    .locals 3

    const-string v0, "Double-MediaProxy"

    if-nez p1, :cond_0

    const-string p0, "CaMediaTime is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/incall/serversdk/interactive/media/CaMediaTime;->sourceCurTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/media/IDouMediaManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/media/IDouMediaManager;->sendMediaPlayTime(Lcom/incall/serversdk/interactive/media/CaMediaTime;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "next: service is not bind"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendMediaSource(Lcom/incall/serversdk/interactive/media/CaMediaSource;)V
    .locals 3

    const-string v0, "Double-MediaProxy"

    if-nez p1, :cond_0

    const-string p0, "CaMediaSource is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CaMediaSource = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/incall/serversdk/interactive/media/CaMediaSource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/media/IDouMediaManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/media/IDouMediaManager;->sendMediaSource(Lcom/incall/serversdk/interactive/media/CaMediaSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "next: service is not bind"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
