.class public interface abstract Lcom/incall/serversdk/mediascanner/IMediaScannerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Default;,
        Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub;,
        Lcom/incall/serversdk/mediascanner/IMediaScannerCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract postStatus(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
