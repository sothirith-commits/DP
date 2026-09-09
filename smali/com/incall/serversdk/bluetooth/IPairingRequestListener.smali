.class public interface abstract Lcom/incall/serversdk/bluetooth/IPairingRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/IPairingRequestListener$Default;,
        Lcom/incall/serversdk/bluetooth/IPairingRequestListener$Stub;,
        Lcom/incall/serversdk/bluetooth/IPairingRequestListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onRquestPairState(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
