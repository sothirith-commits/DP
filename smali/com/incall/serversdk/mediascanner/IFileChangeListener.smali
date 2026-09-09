.class public interface abstract Lcom/incall/serversdk/mediascanner/IFileChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/mediascanner/IFileChangeListener$Default;,
        Lcom/incall/serversdk/mediascanner/IFileChangeListener$Stub;,
        Lcom/incall/serversdk/mediascanner/IFileChangeListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract fileChanged(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
