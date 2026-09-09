.class public interface abstract Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback$Default;,
        Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback$Stub;,
        Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onFileData(I[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFileInfo(ILjava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
