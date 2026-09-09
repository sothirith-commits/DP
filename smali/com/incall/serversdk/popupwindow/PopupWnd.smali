.class public Lcom/incall/serversdk/popupwindow/PopupWnd;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;,
        Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/popupwindow/IPopupWindow;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SVR_MNG__POPUP_MANAGER_PopupWnd"


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field mListener:Lcom/incall/serversdk/popupwindow/PopupListener;

.field mNextView:Landroid/view/View;

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

.field private mPopupWindowListenr:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;-><init>(Lcom/incall/serversdk/popupwindow/PopupWnd$1;)V

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    new-instance p1, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    invoke-direct {p1}, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupWindowListenr:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static makeWindow(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Lcom/incall/serversdk/popupwindow/PopupConst$Level;)Lcom/incall/serversdk/popupwindow/PopupWnd;
    .locals 1

    invoke-virtual {p3}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->type()I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    new-instance v0, Lcom/incall/serversdk/popupwindow/PopupWnd;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/popupwindow/PopupWnd;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->duration()I

    move-result p0

    iput p0, v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mDuration:I

    iput-object p2, v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mNextView:Landroid/view/View;

    iput-object p3, v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    sget-object p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "makeWindow: type = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", duration = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mDuration:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", level:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v1, "cancel: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v0, Lcom/incall/serversdk/popupwindow/IPopupWindow;

    iget-object v1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    invoke-interface {v0, v1, p0}, Lcom/incall/serversdk/popupwindow/IPopupWindow;->cancelWindow(Ljava/lang/String;Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel: e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.POPUP_SERVICE"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v1, "getView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mNextView:Landroid/view/View;

    return-object p0
.end method

.method public isWindowShow(I)Z
    .locals 3

    const-string v0, "isWindowShow: isWindowShow = "

    sget-object v1, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v2, "isWindowShow: level = "

    invoke-static {p1, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/popupwindow/IPopupWindow;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/popupwindow/IPopupWindow;->isWindowShow(I)Z

    move-result p0

    sget-object p1, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    sget-object p1, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isWindowShow: e = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public registerPopupCallBack(Lcom/incall/serversdk/popupwindow/PopupCallBack;)V
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mCallBack:Lcom/incall/serversdk/popupwindow/PopupCallBack;

    return-void
.end method

.method public registerPopupwindowListener(Lcom/incall/serversdk/popupwindow/PopupListener;)V
    .locals 3

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerPopupwindowListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupWindowListenr:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    iput-object p1, v0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;->mPopupListener:Lcom/incall/serversdk/popupwindow/PopupListener;

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/popupwindow/IPopupWindow;

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupWindowListenr:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    invoke-interface {p1, p0}, Lcom/incall/serversdk/popupwindow/IPopupWindow;->registerPopupwindowListener(Lcom/incall/serversdk/popupwindow/IPopupWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerPopupwindowListener: e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public resetType()V
    .locals 2

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v1, "resetType: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-virtual {v1}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->type()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mNeedShow:Z

    return-void
.end method

.method public setShowType(I)V
    .locals 3

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v1, "setShowType: type = "

    invoke-static {p1, v1, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setShowType~~~type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    iput p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mShowType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mNeedShow:Z

    return-void
.end method

.method public setType(I)V
    .locals 2

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v1, "setType: type = "

    invoke-static {p1, v1, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mNeedShow:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setView: view = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mNextView:Landroid/view/View;

    return-void
.end method

.method public setWinListener(Lcom/incall/serversdk/popupwindow/PopupListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWinListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mListener:Lcom/incall/serversdk/popupwindow/PopupListener;

    return-void
.end method

.method public show()V
    .locals 3

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v1, "show: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    iget-object v2, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, v1, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mNextView:Landroid/view/View;

    iput-object v2, v1, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mNextView:Landroid/view/View;

    iget-object v2, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    iput-object v2, v1, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v2, Lcom/incall/serversdk/popupwindow/IPopupWindow;

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v2, v0, v1, p0}, Lcom/incall/serversdk/popupwindow/IPopupWindow;->enqueueWindow(Ljava/lang/String;Lcom/incall/serversdk/popupwindow/IPopupWindowCallBack;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "setView must have been called"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterPopupCallBack()V
    .locals 1

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupCallBack:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mCallBack:Lcom/incall/serversdk/popupwindow/PopupCallBack;

    return-void
.end method

.method public unRegisterPopupwindowListener()V
    .locals 3

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterPopupwindowListener: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupWindowListenr:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;->mPopupListener:Lcom/incall/serversdk/popupwindow/PopupListener;

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v0, Lcom/incall/serversdk/popupwindow/IPopupWindow;

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mPopupWindowListenr:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    invoke-interface {v0, p0}, Lcom/incall/serversdk/popupwindow/IPopupWindow;->unRegisterPopupwindowListener(Lcom/incall/serversdk/popupwindow/IPopupWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterListeter error e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateWindow(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Lcom/incall/serversdk/popupwindow/PopupConst$Level;)V
    .locals 1

    iput-object p2, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->type()I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p3}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->duration()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mDuration:I

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mNextView:Landroid/view/View;

    iput-object p3, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    sget-object p1, Lcom/incall/serversdk/popupwindow/PopupWnd;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "updateWindow: type = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", duration = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mDuration:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", level = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd;->mLevel:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
