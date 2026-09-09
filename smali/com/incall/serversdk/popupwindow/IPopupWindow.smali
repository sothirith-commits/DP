.class public interface abstract Lcom/incall/serversdk/popupwindow/IPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/popupwindow/IPopupWindow$Default;,
        Lcom/incall/serversdk/popupwindow/IPopupWindow$Stub;,
        Lcom/incall/serversdk/popupwindow/IPopupWindow$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cancelWindow(Ljava/lang/String;Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enqueueWindow(Ljava/lang/String;Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isWindowShow(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerPopupwindowListener(Lcom/incall/serversdk/popupwindow/IPopupWindowListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterPopupwindowListener(Lcom/incall/serversdk/popupwindow/IPopupWindowListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
