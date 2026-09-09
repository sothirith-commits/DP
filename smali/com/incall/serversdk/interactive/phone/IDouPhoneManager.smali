.class public interface abstract Lcom/incall/serversdk/interactive/phone/IDouPhoneManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Default;,
        Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub;,
        Lcom/incall/serversdk/interactive/phone/IDouPhoneManager$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract setCallInfo(Lcom/incall/serversdk/interactive/phone/CaCallInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHandStatus(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMicMuteStatus(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPhoneStatus(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPhoneTime(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
