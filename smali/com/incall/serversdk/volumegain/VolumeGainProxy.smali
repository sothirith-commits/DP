.class public Lcom/incall/serversdk/volumegain/VolumeGainProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/volumegain/IVolumeGain;",
        ">;"
    }
.end annotation


# static fields
.field private static SELF:Lcom/incall/serversdk/volumegain/VolumeGainProxy; = null

.field private static final TAG:Ljava/lang/String; = "VolumeGainProxy"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    sget-object p0, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    const-string v0, "VolumeGainProxy"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/volumegain/VolumeGainProxy;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->SELF:Lcom/incall/serversdk/volumegain/VolumeGainProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/volumegain/VolumeGainProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/volumegain/VolumeGainProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->SELF:Lcom/incall/serversdk/volumegain/VolumeGainProxy;

    :cond_0
    sget-object v0, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->SELF:Lcom/incall/serversdk/volumegain/VolumeGainProxy;

    return-object v0
.end method


# virtual methods
.method public addGain(Z)V
    .locals 2

    const-string v0, "addGain: mInterface = "

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/volumegain/IVolumeGain;->addGain(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public decGain(Z)V
    .locals 2

    const-string v0, "decGain: mInterface = "

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/volumegain/IVolumeGain;->decGain(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getCurrentGain()I
    .locals 4

    const-string v0, "getCurrentGain: mInterface = "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0}, Lcom/incall/serversdk/volumegain/IVolumeGain;->getCurrentGain()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public getCurrentSpeed()I
    .locals 4

    const-string v0, "getCurrentSpeed: mInterface = "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0}, Lcom/incall/serversdk/volumegain/IVolumeGain;->getCurrentSpeed()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public getGainLevel()I
    .locals 4

    const-string v0, "getGainLevel: mInterface = "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0}, Lcom/incall/serversdk/volumegain/IVolumeGain;->getGainLevel()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.VOLUMEGAIN_SERVICE"

    return-object p0
.end method

.method public isCarAcc()Z
    .locals 4

    const-string v0, "isCarAcc: mInterface = "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0}, Lcom/incall/serversdk/volumegain/IVolumeGain;->isCarAcc()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public setGainLevel(I)V
    .locals 2

    const-string v0, "setGainLevel: mInterface = "

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/volumegain/IVolumeGain;->setGainLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    const-string v0, "setSpeed: mInterface = "

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/incall/serversdk/volumegain/VolumeGainProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/volumegain/IVolumeGain;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/volumegain/IVolumeGain;->setSpeed(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
