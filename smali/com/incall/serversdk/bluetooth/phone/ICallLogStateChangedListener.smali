.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onLogChanage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/incall/serversdk/bluetooth/phone/CallLog;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLogSyncProgress(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLogSyncStateChanage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
