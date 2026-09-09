.class public Lcom/incall/serversdk/popupwindow/IPopupWindow$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/popupwindow/IPopupWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/popupwindow/IPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelWindow(Ljava/lang/String;Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public enqueueWindow(Ljava/lang/String;Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public isWindowShow(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public registerPopupwindowListener(Lcom/incall/serversdk/popupwindow/IPopupWindowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unRegisterPopupwindowListener(Lcom/incall/serversdk/popupwindow/IPopupWindowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
