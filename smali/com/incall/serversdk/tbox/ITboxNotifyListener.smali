.class public interface abstract Lcom/incall/serversdk/tbox/ITboxNotifyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/tbox/ITboxNotifyListener$Default;,
        Lcom/incall/serversdk/tbox/ITboxNotifyListener$Stub;,
        Lcom/incall/serversdk/tbox/ITboxNotifyListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onDigitalKey()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPanoramaUpLoad()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequstLog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSendToCar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
