.class public interface abstract Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener$Default;,
        Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener$Stub;,
        Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onDeviceNameChanage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoteDeviceNameChanage(Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
