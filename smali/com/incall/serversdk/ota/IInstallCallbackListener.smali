.class public interface abstract Lcom/incall/serversdk/ota/IInstallCallbackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/ota/IInstallCallbackListener$Default;,
        Lcom/incall/serversdk/ota/IInstallCallbackListener$Stub;,
        Lcom/incall/serversdk/ota/IInstallCallbackListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
