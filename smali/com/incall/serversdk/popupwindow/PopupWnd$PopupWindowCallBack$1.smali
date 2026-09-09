.class Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack$1;->this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack$1;->this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    invoke-virtual {v0}, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->handleHide()V

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack$1;->this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->mNextView:Landroid/view/View;

    return-void
.end method
