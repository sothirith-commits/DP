.class public interface abstract Lcom/incall/serversdk/network/callback/ISystemAuthCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/network/callback/ISystemAuthCallBack$Default;,
        Lcom/incall/serversdk/network/callback/ISystemAuthCallBack$Stub;,
        Lcom/incall/serversdk/network/callback/ISystemAuthCallBack$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onAuthException(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAuthFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAuthSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
