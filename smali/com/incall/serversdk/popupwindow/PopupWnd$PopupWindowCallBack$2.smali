.class Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack$2;
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

    iput-object p1, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack$2;->this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack$2;->this$0:Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;

    invoke-virtual {p0}, Lcom/incall/serversdk/popupwindow/PopupWnd$PopupWindowCallBack;->handleShow()V

    return-void
.end method
