.class public interface abstract Lcom/incall/serversdk/network/callback/INetworkStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/network/callback/INetworkStateListener$Default;,
        Lcom/incall/serversdk/network/callback/INetworkStateListener$Stub;,
        Lcom/incall/serversdk/network/callback/INetworkStateListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onNetworkChange(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
