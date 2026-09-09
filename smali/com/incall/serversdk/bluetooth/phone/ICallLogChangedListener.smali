.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onLogChanage(Lcom/incall/serversdk/bluetooth/phone/CallLog;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
