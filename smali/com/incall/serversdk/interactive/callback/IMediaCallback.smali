.class public interface abstract Lcom/incall/serversdk/interactive/callback/IMediaCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/callback/IMediaCallback$Default;,
        Lcom/incall/serversdk/interactive/callback/IMediaCallback$Stub;,
        Lcom/incall/serversdk/interactive/callback/IMediaCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onMediaInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMediaStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
