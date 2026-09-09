.class public final Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public activeView:Landroid/view/View;

.field public final consumeTouchesWhenEnabled:Z

.field public downX:F

.field public downY:F

.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final handler:Landroid/os/Handler;

.field public longPressMoveHandled:Z

.field public final longPressRunnable:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

.field public longPressTriggered:Z

.field public movedBeyondSlop:Z

.field public final onLongPress:Lkotlin/jvm/functions/Function1;

.field public final onLongPressMove:Lkotlin/jvm/functions/Function2;

.field public final onLongPressRelease:Lkotlin/jvm/functions/Function1;

.field public final onTap:Lkotlin/jvm/functions/Function1;

.field public final onTapEvent:Lkotlin/jvm/functions/Function2;

.field public final onTouchEvent:Lkotlin/jvm/functions/Function2;

.field public final timeoutMs:J

.field public final touchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V
    .locals 2

    and-int/lit8 v0, p13, 0x2

    if-eqz v0, :cond_0

    const-wide/16 p2, 0x12c

    :cond_0
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_1
    and-int/lit8 v0, p13, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object p6, v1

    :cond_2
    and-int/lit8 v0, p13, 0x20

    if-eqz v0, :cond_3

    move-object p7, v1

    :cond_3
    and-int/lit8 v0, p13, 0x40

    if-eqz v0, :cond_4

    move-object p8, v1

    :cond_4
    and-int/lit16 v0, p13, 0x80

    if-eqz v0, :cond_5

    move-object p9, v1

    :cond_5
    and-int/lit16 v0, p13, 0x100

    if-eqz v0, :cond_6

    move-object p10, v1

    :cond_6
    and-int/lit16 p13, p13, 0x200

    if-eqz p13, :cond_7

    const/4 p11, 0x0

    :cond_7
    const-string p13, "enabled"

    invoke-static {p13, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->timeoutMs:J

    iput-object p5, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->enabled:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onTouchEvent:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onLongPressMove:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onLongPressRelease:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onTapEvent:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onTap:Lkotlin/jvm/functions/Function1;

    iput-boolean p11, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->consumeTouchesWhenEnabled:Z

    iput-object p12, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onLongPress:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->handler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->touchSlop:F

    new-instance p1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressRunnable:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final clearState()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressRunnable:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->activeView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->movedBeyondSlop:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressMoveHandled:Z

    return-void
.end method

.method public final hasMoved(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->downX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->touchSlop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->downY:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onTouchEvent:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->enabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->clearState()V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressRunnable:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    iget-object v4, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onTap:Lkotlin/jvm/functions/Function1;

    iget-boolean v5, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->consumeTouchesWhenEnabled:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_10

    if-eq v0, v6, :cond_a

    const/4 v7, 0x2

    if-eq v0, v7, :cond_6

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    if-nez p0, :cond_2

    if-eqz v5, :cond_11

    :cond_2
    :goto_0
    move v1, v6

    goto/16 :goto_4

    :cond_3
    iget-boolean p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    if-nez p1, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    move v1, v6

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->clearState()V

    goto/16 :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v6, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->movedBeyondSlop:Z

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->activeView:Landroid/view/View;

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressMoveHandled:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onLongPressMove:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v6, :cond_8

    move p1, v6

    goto :goto_1

    :cond_8
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressMoveHandled:Z

    :cond_9
    :goto_2
    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    if-nez p0, :cond_2

    if-nez v5, :cond_2

    if-eqz v4, :cond_11

    goto :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    if-nez v0, :cond_b

    if-nez v5, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    move v1, v6

    :cond_c
    if-eqz v0, :cond_d

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressMoveHandled:Z

    if-nez v2, :cond_d

    iget-object p2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onLongPressRelease:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_f

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->movedBeyondSlop:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onTapEvent:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v4, :cond_f

    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->clearState()V

    goto :goto_4

    :cond_10
    iput-object p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->activeView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->downY:F

    iput-boolean v1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->movedBeyondSlop:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressMoveHandled:Z

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide p0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->timeoutMs:J

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v5, :cond_2

    if-eqz v4, :cond_11

    goto/16 :goto_0

    :cond_11
    :goto_4
    return v1
.end method
