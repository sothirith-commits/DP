.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/ICallStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/ICallStateListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/ICallStateListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/ICallStateListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onCallState(Lcom/incall/serversdk/bluetooth/phone/CallClientInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
