.class Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener$1;->this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/incall/serversdk/popupwindow/PopupWnd;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener$1;->this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowListener;->mPopupListener:Lcom/incall/serversdk/popupwindow/PopupListener;

    if-eqz p0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/popupwindow/PopupListener;->onHide(Lcom/incall/serversdk/popupwindow/PopupConst$Level;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/popupwindow/PopupListener;->onShow(Lcom/incall/serversdk/popupwindow/PopupConst$Level;)V

    :cond_2
    :goto_0
    return-void
.end method
