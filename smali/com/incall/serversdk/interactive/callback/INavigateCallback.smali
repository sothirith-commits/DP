.class public interface abstract Lcom/incall/serversdk/interactive/callback/INavigateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/callback/INavigateCallback$Default;,
        Lcom/incall/serversdk/interactive/callback/INavigateCallback$Stub;,
        Lcom/incall/serversdk/interactive/callback/INavigateCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onIPNavigateStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestLVDS(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
