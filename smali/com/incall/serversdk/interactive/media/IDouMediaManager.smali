.class public interface abstract Lcom/incall/serversdk/interactive/media/IDouMediaManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/media/IDouMediaManager$Default;,
        Lcom/incall/serversdk/interactive/media/IDouMediaManager$Stub;,
        Lcom/incall/serversdk/interactive/media/IDouMediaManager$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract sendMediaAlbumPath(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMediaPlayTime(Lcom/incall/serversdk/interactive/media/CaMediaTime;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMediaSource(Lcom/incall/serversdk/interactive/media/CaMediaSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
