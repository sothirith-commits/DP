.class public interface abstract Lcom/incall/serversdk/ota/ITboxUSBBootRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/ota/ITboxUSBBootRequestListener$Default;,
        Lcom/incall/serversdk/ota/ITboxUSBBootRequestListener$Stub;,
        Lcom/incall/serversdk/ota/ITboxUSBBootRequestListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onRequestStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
