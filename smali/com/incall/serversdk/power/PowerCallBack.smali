.class public abstract Lcom/incall/serversdk/power/PowerCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onACCStateChange(I)V
.end method

.method public onEssentialTaskReq()V
    .locals 0

    return-void
.end method

.method public abstract onPowerStateChanage(I)V
.end method

.method public onScreenSignalChange(II)V
    .locals 0

    return-void
.end method

.method public abstract onSleeping()V
.end method
