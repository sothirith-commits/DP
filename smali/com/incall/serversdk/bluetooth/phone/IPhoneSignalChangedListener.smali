.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onSignalChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
