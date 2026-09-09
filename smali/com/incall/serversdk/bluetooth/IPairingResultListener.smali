.class public interface abstract Lcom/incall/serversdk/bluetooth/IPairingResultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/IPairingResultListener$Default;,
        Lcom/incall/serversdk/bluetooth/IPairingResultListener$Stub;,
        Lcom/incall/serversdk/bluetooth/IPairingResultListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onResultPairState(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
