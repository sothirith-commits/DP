.class public interface abstract Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent$Default;,
        Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent$Stub;,
        Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onDevicesConnect(Lcom/incall/serversdk/devices/UsbDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDevicesDisconnect(Lcom/incall/serversdk/devices/UsbDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
