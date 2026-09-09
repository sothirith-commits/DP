.class public interface abstract Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback$Default;,
        Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback$Stub;,
        Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onFileInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
