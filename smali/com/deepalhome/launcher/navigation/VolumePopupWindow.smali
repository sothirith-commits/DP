.class public final Lcom/deepalhome/launcher/navigation/VolumePopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

.field public callChangedDuringTracking:Z

.field public final closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

.field public final contentObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

.field public currentAnchorSpec:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;

.field public isExpanded:Z

.field public isObserverRegistered:Z

.field public isShowing:Z

.field public lastAnchorFeedbackUptimeMs:J

.field public mediaChangedDuringTracking:Z

.field public navChangedDuringTracking:Z

.field public onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

.field public final rootView:Landroid/view/ViewGroup;

.field public final windowTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p2

    const-string v2, "audio"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->audioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->$r8$clinit:I

    sget-object v2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v2, 0x7f0e010e

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v1, v3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    const-string v2, "inflate(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "volume_popup_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->windowTag:Ljava/lang/String;

    sget-object v2, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    new-instance v3, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v2, v4}, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->contentObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    new-instance v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    new-instance v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;

    invoke-direct {v2, p1, p0, v1}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V

    iget-object v3, p2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setOnBoxedPointsChangeListener(Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;)V

    new-instance v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V

    iget-object v0, p2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->navSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setOnBoxedPointsChangeListener(Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;)V

    new-instance v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;

    const/4 v2, 0x2

    invoke-direct {v0, p1, p0, v2}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V

    iget-object v2, p2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->callSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setOnBoxedPointsChangeListener(Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updateSb()V

    iget-object v0, p2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v1, p2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0, p1}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->moreBtn:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static isViewReady(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyContainerWidthForState()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->backgroundView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, p0, :cond_1

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final canShow(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;)Z
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalView:Landroid/view/View;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isViewReady(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalView:Landroid/view/View;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isViewReady(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isViewReady(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isViewReady(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dismiss()V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isObserverRegistered:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isObserverRegistered:Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->contentObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->backgroundView:Leightbitlab/com/blurview/BlurView;

    const-string v3, "backgroundView"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isShowing:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isShowing:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->currentAnchorSpec:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->windowTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/hjq/window/EasyWindow;->cancelByTag(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->lastAnchorFeedbackUptimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final resolveManualPopupHorizontalPoint(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;)F
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_1
    int-to-float p0, p0

    div-float/2addr p0, v0

    add-float/2addr p0, p1

    goto :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    goto :goto_2

    :pswitch_5
    const/4 p0, 0x0

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_1

    :goto_2
    return p0

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

.method public final show(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->canShow(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->currentAnchorSpec:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updateSb()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->applyContainerWidthForState()V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isShowing:Z

    const v0, 0x7f0c001a

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updatePopupPosition()V

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v2, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isShowing:Z

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isObserverRegistered:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isObserverRegistered:Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->contentObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updatePopupPosition()V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    iget-object v3, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->windowTag:Ljava/lang/String;

    iput-object v4, v3, Lcom/hjq/window/EasyWindow;->mTag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {v3, v4}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    invoke-virtual {v3}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    invoke-virtual {v3}, Lcom/hjq/window/EasyWindow;->show()V

    new-instance v3, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v2, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final updatePopupPosition()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->currentAnchorSpec:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->canShow(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->applyContainerWidthForState()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    iget-object v6, v5, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v6, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v3, v5, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v4, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v5, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gez v6, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gez v8, :cond_3

    move v8, v7

    :cond_3
    iget-boolean v9, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    iget-object v10, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalView:Landroid/view/View;

    if-eqz v9, :cond_5

    iget-object v11, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalView:Landroid/view/View;

    if-nez v11, :cond_4

    goto :goto_0

    :cond_4
    move-object v10, v11

    :cond_5
    :goto_0
    iget-object v11, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->horizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    if-eqz v9, :cond_7

    iget-object v9, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedHorizontalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    move-object v11, v9

    :cond_7
    :goto_1
    const/4 v9, 0x2

    new-array v12, v9, [I

    invoke-virtual {v10, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v12, v12, v7

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-eqz v11, :cond_a

    if-eq v11, v14, :cond_9

    if-ne v11, v9, :cond_8

    int-to-float v11, v12

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    goto :goto_2

    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_9
    int-to-float v11, v12

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v13

    add-float/2addr v11, v10

    goto :goto_2

    :cond_a
    int-to-float v11, v12

    :goto_2
    iget-boolean v10, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    iget-object v12, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    if-eqz v10, :cond_c

    iget-object v15, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupHorizontalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    if-nez v15, :cond_b

    goto :goto_3

    :cond_b
    move-object v12, v15

    :cond_c
    :goto_3
    iget-object v15, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetX:Ljava/lang/Integer;

    iget v13, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetX:I

    if-eqz v10, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_4

    :cond_d
    move v10, v13

    :goto_4
    sget-object v14, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->AUTO:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const/16 v16, 0x0

    if-eq v12, v14, :cond_e

    invoke-virtual {v0, v12}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->resolveManualPopupHorizontalPoint(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;)F

    move-result v10

    goto :goto_6

    :cond_e
    sget-object v12, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->MAIN_CONTROL_CENTER:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    invoke-virtual {v0, v12}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->resolveManualPopupHorizontalPoint(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;)F

    move-result v12

    sub-int v14, v6, v4

    if-gez v14, :cond_f

    move v14, v7

    :cond_f
    int-to-float v14, v14

    sub-float v17, v11, v12

    int-to-float v10, v10

    add-float v17, v17, v10

    cmpg-float v10, v16, v17

    if-gtz v10, :cond_10

    cmpg-float v10, v17, v14

    if-gtz v10, :cond_10

    move v10, v12

    goto :goto_6

    :cond_10
    cmpg-float v10, v17, v16

    if-gez v10, :cond_11

    sget-object v10, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->CONTAINER_START:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    goto :goto_5

    :cond_11
    sget-object v10, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->CONTAINER_END:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    :goto_5
    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->resolveManualPopupHorizontalPoint(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;)F

    move-result v10

    :goto_6
    sub-float/2addr v11, v10

    iget-boolean v10, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    if-eqz v10, :cond_12

    if-eqz v15, :cond_12

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :cond_12
    int-to-float v10, v13

    add-float/2addr v11, v10

    invoke-static {v11}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v10

    sub-int/2addr v6, v4

    if-gez v6, :cond_13

    move v6, v7

    :cond_13
    invoke-static {v10, v7, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v4

    iget-boolean v6, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    iget-object v10, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalView:Landroid/view/View;

    if-eqz v6, :cond_15

    iget-object v11, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalView:Landroid/view/View;

    if-nez v11, :cond_14

    goto :goto_7

    :cond_14
    move-object v10, v11

    :cond_15
    :goto_7
    iget-object v11, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->verticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-eqz v6, :cond_17

    iget-object v6, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedVerticalEdge:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-nez v6, :cond_16

    goto :goto_8

    :cond_16
    move-object v11, v6

    :cond_17
    :goto_8
    new-array v6, v9, [I

    invoke-virtual {v10, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v12, 0x1

    aget v6, v6, v12

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1a

    if-eq v2, v12, :cond_19

    if-ne v2, v9, :cond_18

    int-to-float v2, v6

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    goto :goto_9

    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_19
    int-to-float v2, v6

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    add-float/2addr v2, v6

    goto :goto_9

    :cond_1a
    int-to-float v2, v6

    :goto_9
    iget-boolean v6, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    iget-object v10, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->popupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-eqz v6, :cond_1c

    iget-object v6, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedPopupVerticalAnchor:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    if-nez v6, :cond_1b

    goto :goto_a

    :cond_1b
    move-object v10, v6

    :cond_1c
    :goto_a
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1e

    if-ne v6, v9, :cond_1d

    int-to-float v6, v5

    move/from16 v16, v6

    goto :goto_b

    :cond_1d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1e
    int-to-float v6, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float v16, v6, v9

    :cond_1f
    :goto_b
    sub-float v2, v2, v16

    iget-boolean v0, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    iget v6, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->offsetY:I

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;->expandedOffsetY:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_20
    int-to-float v0, v6

    add-float/2addr v2, v0

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    sub-int/2addr v8, v5

    if-gez v8, :cond_21

    move v8, v7

    :cond_21
    invoke-static {v0, v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800033

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateSb()V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setMax(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "getContext(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->getGroupVolume(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v5, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v5, v0, v1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setValue(IZ)V

    iget-object v0, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->navSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v1}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->getGroupVolume(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v0, v5, v1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setValue(IZ)V

    iget-object v0, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->callSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->getGroupVolume(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    invoke-virtual {v0, p0, v1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setValue(IZ)V

    return-void

    :cond_3
    iget-object v0, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setMax(I)V

    iget-object v0, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setValue(IZ)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    iget-object v4, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->navSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setMax(I)V

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {v4, v0, v1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setValue(IZ)V

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->callSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setMax(I)V

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    invoke-virtual {v2, p0, v1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setValue(IZ)V

    return-void
.end method
