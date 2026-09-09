.class public interface abstract Lcom/incall/serversdk/network/callback/IAppAuthCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/network/callback/IAppAuthCallBack$Default;,
        Lcom/incall/serversdk/network/callback/IAppAuthCallBack$Stub;,
        Lcom/incall/serversdk/network/callback/IAppAuthCallBack$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onAppAuthFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppAuthSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
