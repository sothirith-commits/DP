.class public final Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $pipAppWindow:Lcom/deepalhome/launcher/pip/PipAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/pip/PipAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$2;->$pipAppWindow:Lcom/deepalhome/launcher/pip/PipAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$2;->$pipAppWindow:Lcom/deepalhome/launcher/pip/PipAppWindow;

    iget v0, p0, Lcom/deepalhome/launcher/pip/PipAppWindow;->virtualDisplayId:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v1, v0

    move-wide v2, v9

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/16 v11, 0x101

    invoke-virtual {v0, v11}, Landroid/view/KeyEvent;->setSource(I)V

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v1, v12

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v12, v11}, Landroid/view/KeyEvent;->setSource(I)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/pip/PipAppWindow;->dispatchVirtualKeyEvent(Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v12}, Lcom/deepalhome/launcher/pip/PipAppWindow;->dispatchVirtualKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
