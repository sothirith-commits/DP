.class public interface abstract Lcom/incall/serversdk/popupwindow/IPopupWindowListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/popupwindow/IPopupWindowListener$Default;,
        Lcom/incall/serversdk/popupwindow/IPopupWindowListener$Stub;,
        Lcom/incall/serversdk/popupwindow/IPopupWindowListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onHide(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShow(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
