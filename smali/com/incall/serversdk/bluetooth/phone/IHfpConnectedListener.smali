.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onHfpStateChanage(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
