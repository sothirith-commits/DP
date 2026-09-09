.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract notifyContactsNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onContactChanage(Lcom/incall/serversdk/bluetooth/phone/ContactInfo;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
