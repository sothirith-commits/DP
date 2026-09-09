.class public final Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public downX:F

.field public downY:F

.field public final longPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

.field public longPressStarted:Z

.field public movedBeyondSlop:Z

.field public final synthetic this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

.field public final touchSlop:F

.field public final widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->touchSlop:F

    new-instance p2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p1, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->longPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "event"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->longPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    return v3

    :cond_0
    iget-boolean p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->longPressStarted:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v5, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->downX:F

    sub-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->touchSlop:F

    cmpl-float p1, p1, v5

    if-gtz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->downY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->movedBeyondSlop:Z

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v0, v2, v4}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->access$requestAncestorsDisallowIntercept(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;Z)V

    return v4

    :cond_2
    return v3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v0, v2, v4}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->access$requestAncestorsDisallowIntercept(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;Z)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->movedBeyondSlop:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->longPressStarted:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    :cond_5
    :goto_0
    iput-boolean v4, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->longPressStarted:Z

    iput-boolean v4, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->movedBeyondSlop:Z

    return v3

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->downY:F

    iput-boolean v4, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->longPressStarted:Z

    iput-boolean v4, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->movedBeyondSlop:Z

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 p0, 0x12c

    invoke-virtual {v2, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v0, v2, v3}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->access$requestAncestorsDisallowIntercept(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;Z)V

    return v3
.end method
