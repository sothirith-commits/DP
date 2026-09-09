.class public interface abstract Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/ota/ITboxConnectCallbackListener$Default;,
        Lcom/incall/serversdk/ota/ITboxConnectCallbackListener$Stub;,
        Lcom/incall/serversdk/ota/ITboxConnectCallbackListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onTboxConnect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTboxVersionChanage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
