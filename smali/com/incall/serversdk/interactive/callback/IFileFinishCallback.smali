.class public interface abstract Lcom/incall/serversdk/interactive/callback/IFileFinishCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/callback/IFileFinishCallback$Default;,
        Lcom/incall/serversdk/interactive/callback/IFileFinishCallback$Stub;,
        Lcom/incall/serversdk/interactive/callback/IFileFinishCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onFileInfo(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
