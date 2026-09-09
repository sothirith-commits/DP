.class public final synthetic Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda10;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda10;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda10;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string p3, "this$0"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda10;->f$1:Landroid/view/View;

    const-string p3, "$rootView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->captureBaseLyricContainerHeight()V

    iget-boolean p1, p2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getWindowBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p6, p2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    invoke-virtual {p6, p3, p4, p5, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->updateAnchor(IIII)V

    :goto_0
    iget-object p1, p2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean p3, p2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz p3, :cond_2

    iget-boolean p3, p2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    if-nez p3, :cond_2

    sget-object p3, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockOverlay:Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->dismiss()V

    :goto_1
    return-void
.end method
