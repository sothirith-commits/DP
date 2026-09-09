.class public final synthetic Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const v0, 0x7f0c001f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "this$0"

    iget v5, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;->f$1:I

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    check-cast v7, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    iget-object p2, v7, Lcom/deepalhome/launcher/music/MusicAppWindow;->longPressHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    if-eq p0, v3, :cond_0

    if-eq p0, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v7, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontSizeLongPressRunnable:Landroidx/core/provider/CallbackWithHandler$2;

    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v1, v7, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontSizeLongPressRunnable:Landroidx/core/provider/CallbackWithHandler$2;

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/music/MusicAppWindow;->scheduleFontMenuAutoCollapse()V

    invoke-virtual {v7, v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->adjustFontSize(I)V

    new-instance p0, Landroidx/core/provider/CallbackWithHandler$2;

    invoke-direct {p0, v5, v6, v7}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p0, v7, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontSizeLongPressRunnable:Landroidx/core/provider/CallbackWithHandler$2;

    goto :goto_0

    :goto_1
    return v2

    :pswitch_0
    check-cast v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    iget-object p2, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressHandler:Landroid/os/Handler;

    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_3

    if-eq p0, v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iput-object v1, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetHideTimer()V

    invoke-virtual {v7, v5}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->adjustFontSize(I)V

    new-instance p0, Landroidx/core/provider/CallbackWithHandler$2;

    const/4 p1, 0x2

    invoke-direct {p0, v5, p1, v7}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(IILjava/lang/Object;)V

    iget-object p1, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p0, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    goto :goto_2

    :goto_3
    return v2

    :pswitch_1
    check-cast v7, Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v7, v5, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$XzdQofRA_XYYLgYx0n5VSrWIVv0(Lcom/deepalhome/launcher/window/WindowsView;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
