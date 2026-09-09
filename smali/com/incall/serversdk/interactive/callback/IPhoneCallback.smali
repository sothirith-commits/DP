.class public interface abstract Lcom/incall/serversdk/interactive/callback/IPhoneCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/callback/IPhoneCallback$Default;,
        Lcom/incall/serversdk/interactive/callback/IPhoneCallback$Stub;,
        Lcom/incall/serversdk/interactive/callback/IPhoneCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onPhoneOperat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPhoneStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
