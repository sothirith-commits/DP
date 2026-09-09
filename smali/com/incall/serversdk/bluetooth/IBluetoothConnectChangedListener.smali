.class public interface abstract Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener$Default;,
        Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener$Stub;,
        Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onBluetoothConnectChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
