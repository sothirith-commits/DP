.class public final Lme/wcy/lrcview/LrcView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView$4;->$r8$classId:I

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lme/wcy/lrcview/LrcView$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object v0, v0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {v0, p1}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->onDown(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_2
    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_3
    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_4
    const-string p0, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_5
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lme/wcy/lrcview/LrcView;

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    iget v0, p0, Lme/wcy/lrcview/LrcView$4;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :sswitch_0
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :sswitch_1
    const-string v0, "e2"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/16 v3, 0x32

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v1, v4, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v4, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0, p2, p1}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->singleFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v1, v4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v4, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_RIGHT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0, p2, p1}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->singleFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p3, v1

    cmpl-float p3, p3, v2

    if-lez p3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p3, v1

    float-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p3, v1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v1, v3

    cmpl-float p3, p3, v1

    if-lez p3, :cond_3

    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_UP_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0, p2, p1}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->singleFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p3, v1

    cmpg-float p3, p3, v2

    if-gez p3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p3, v1

    float-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p3, p2, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p3, v3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_DOWN_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0, p2, p1}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->singleFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_4
    :goto_0
    return v0

    :sswitch_2
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean v1, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    iput-boolean p0, v0, Lme/wcy/lrcview/LrcView;->isFling:Z

    iget-object p1, v0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    iget p1, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    float-to-int v3, p1

    float-to-int v5, p4

    iget-object p1, v0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    float-to-int v8, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    float-to-int v9, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_2

    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    goto :goto_2

    :cond_7
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    :goto_2
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget v0, p0, Lme/wcy/lrcview/LrcView$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void

    :pswitch_2
    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_3
    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onOpenPanelRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget v0, p0, Lme/wcy/lrcview/LrcView$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "e2"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0, p2}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->singleFingeronSlipProcess(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    const-string p3, "e2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    iget p2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupSwipeStartX:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupSwipeBaseIndex:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->orderedModes:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->updateSelectedMode(Lcom/deepalhome/launcher/navigation/WindDirectionMode;Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    :goto_0
    return p3

    :pswitch_2
    const-string p3, "e2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    iget p2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupSwipeStartX:F

    sub-float/2addr p1, p2

    neg-float p1, p1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    iget p3, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupSwipeBaseTemp:F

    int-to-float p1, p1

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p1, p4

    add-float/2addr p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->normalizeTemperature(F)F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->updateSelectedTemperature(FZ)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    move p0, p2

    :goto_1
    return p0

    :pswitch_3
    const-string p3, "e2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    iget p2, p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->popupSwipeStartX:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->setSelectionByOffset(I)V

    const/4 p0, 0x1

    :goto_2
    return p0

    :pswitch_4
    const-string p3, "currentEvent"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isTouchOnModeAction(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupSwipeStartX:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupSwipeBaseIndex:I

    add-int/2addr p2, p1

    sget-object p1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->ORDERED_LEVELS:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->updateSelectedLevel(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    const/4 p3, 0x1

    :cond_4
    :goto_3
    return p3

    :pswitch_5
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean p0, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    const/4 p1, 0x1

    if-nez p0, :cond_6

    iput-boolean p1, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    goto :goto_4

    :cond_6
    neg-float p0, p4

    iget p2, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    add-float/2addr p2, p0

    iput p2, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    iget-object p2, v0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    :goto_6
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Lme/wcy/lrcview/LrcView$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lme/wcy/lrcview/LrcView;->mShowTimeline:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$1300(Lme/wcy/lrcview/LrcView;)I

    move-result v1

    iget-object v2, v0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/wcy/lrcview/LrcEntry;

    iget-wide v2, v2, Lme/wcy/lrcview/LrcEntry;->time:J

    iget-object v4, v0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    if-eqz v4, :cond_1

    check-cast v4, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;

    sget v5, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    const-string v5, "this$0"

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->interceptSeekWhenUnsupported(Lkotlin/jvm/functions/Function0;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/music/MusicManager;->seekTo(J)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    iget-object p0, v0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v1, v0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
