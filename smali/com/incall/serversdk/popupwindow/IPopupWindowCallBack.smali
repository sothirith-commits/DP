.class public interface abstract Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack$Default;,
        Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack$Stub;,
        Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onHide()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
