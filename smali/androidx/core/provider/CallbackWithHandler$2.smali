.class public final Landroidx/core/provider/CallbackWithHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$callback:Ljava/lang/Object;

.field public val$reason:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/core/provider/CallbackWithHandler$2;->$r8$classId:I

    iput-object p3, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Ljava/lang/Object;

    iput p1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/core/provider/CallbackWithHandler$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Landroidx/core/provider/CallbackWithHandler$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "initCallbacks cannot be null"

    invoke-static {p3, p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Ljava/lang/Object;

    iput p2, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const v0, 0x7f0c000b

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Ljava/lang/Object;

    iget v4, p0, Landroidx/core/provider/CallbackWithHandler$2;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    check-cast v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;

    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    if-gez v2, :cond_0

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-virtual {v2, v0}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->scrollContentWhenFinished(I)Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    filled-new-array {v1, v1}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    move-object v0, v4

    :cond_1
    :goto_0
    new-instance v2, Landroidx/transition/Transition$3;

    const/16 v5, 0x13

    invoke-direct {v2, v5, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    iget-object p0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v5, :cond_2

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_3

    :cond_2
    if-nez v0, :cond_6

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v0, v0

    if-lt v5, v0, :cond_4

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_3

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    :cond_7
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v0, v1, v1}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :goto_2
    move-object p0, v4

    :goto_3
    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v4}, Landroidx/transition/Transition$3;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_4
    return-void

    :pswitch_0
    check-cast v3, Lcom/google/android/material/slider/BaseSlider;

    iget-object v0, v3, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    invoke-virtual {v3, p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    return-void

    :pswitch_2
    check-cast v3, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_3
    sget v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    check-cast v3, Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget v1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->adjustFontSize(I)V

    iget-object v1, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->longPressHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_4
    check-cast v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget v1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->adjustFontSize(I)V

    iget-object v1, v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressHandler:Landroid/os/Handler;

    iget-object v2, v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_5
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    if-eq p0, v2, :cond_9

    :goto_5
    if-ge v1, v0, :cond_a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFailed()V

    add-int/2addr v1, v2

    goto :goto_5

    :cond_9
    :goto_6
    if-ge v1, v0, :cond_a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onInitialized()V

    add-int/2addr v1, v2

    goto :goto_6

    :cond_a
    return-void

    :pswitch_6
    check-cast v3, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    invoke-virtual {v3, p0}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
