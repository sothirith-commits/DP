.class public interface abstract Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent$Default;,
        Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent$Stub;,
        Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onVolumeRecordChanged(Lcom/incall/serversdk/devices/VolumeRecord;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVolumeStateChanged(Lcom/incall/serversdk/devices/VolumeInfo;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
