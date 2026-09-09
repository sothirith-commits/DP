.class public interface abstract Lcom/incall/serversdk/source/ISourceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/source/ISourceCallback$Default;,
        Lcom/incall/serversdk/source/ISourceCallback$Stub;,
        Lcom/incall/serversdk/source/ISourceCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onSourceChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
