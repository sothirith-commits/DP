.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;Z)V
    .locals 0

    const/16 p3, 0x8

    iput p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const v2, 0x7f1301c1

    const v3, 0x7f1301c3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v9, :pswitch_data_0

    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    iget-object v2, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mCurrentState:Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    iget-boolean v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    iput-boolean v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    iget-boolean v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    iput-boolean v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    iget-boolean v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    iput-boolean v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    iget-boolean v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    iput-boolean v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    iget-boolean v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isGeneratorOn:Z

    iput-boolean v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isGeneratorOn:Z

    iget-boolean v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    iput-boolean v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatHeatLevel:I

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatHeatLevel:I

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatVentilationLevel:I

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatVentilationLevel:I

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    iget-boolean v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    iput-boolean v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatHeatLevel:I

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatHeatLevel:I

    iget v3, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatVentilationLevel:I

    iput v3, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatVentilationLevel:I

    iget v0, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    iput v0, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    sget-object v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->object:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mMapListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    throw v6

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/cardview/widget/CardView$1;

    const-string v2, "$callback"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    const-string v2, "this$0"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->createWindowInner()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->windowMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v2, Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :pswitch_1
    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    const-string v2, "this$0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    const-string v2, "$it"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->touchUtils:Lcom/lzf/easyfloat/core/TouchUtils;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v2, v0, v3}, Lcom/lzf/easyfloat/core/TouchUtils;->initBoarderValue(Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/lzf/easyfloat/core/TouchUtils;->sideAnim(Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V

    return-void

    :cond_4
    const-string v0, "touchUtils"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :pswitch_2
    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :pswitch_3
    const-string v1, "$view"

    iget-object v2, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$rootView"

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/window/WindowsView;->setBlurRootView(Landroid/view/ViewGroup;)V

    return-void

    :pswitch_4
    const-string v1, "this$0"

    iget-object v2, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$step"

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v7, :cond_12

    sget-object v1, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    iget-object v3, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->orderedSteps:Ljava/util/List;

    if-ne v1, v7, :cond_5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-ltz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v9, v6

    :goto_2
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_7
    iget v1, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->currentIndex:I

    :goto_3
    iput v1, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->currentIndex:I

    iget-object v9, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->previousStepTv:Landroid/widget/TextView;

    const-string v10, "previousStepTv"

    if-eqz v9, :cond_11

    sub-int/2addr v1, v7

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->stepText(Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->currentStepTv:Landroid/widget/TextView;

    const-string v9, "currentStepTv"

    if-eqz v1, :cond_10

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->stepText(Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->nextStepTv:Landroid/widget/TextView;

    const-string v11, "nextStepTv"

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v12, 0x5

    if-eq v0, v12, :cond_8

    if-eq v0, v5, :cond_8

    iget v0, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->currentIndex:I

    add-int/2addr v0, v7

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->stepText(Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->context:Landroid/content/Context;

    const v3, 0x7f1302d1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->previousStepTv:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v1, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->currentStepTv:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    iget-object v2, v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->nextStepTv:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    filled-new-array {v0, v1, v2}, [Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v8, 0x1

    if-ltz v8, :cond_b

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-ne v8, v7, :cond_9

    move v3, v4

    goto :goto_6

    :cond_9
    const v3, 0x3f1eb852    # 0.62f

    :goto_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-ne v8, v7, :cond_a

    move v3, v4

    goto :goto_7

    :cond_a
    const v3, 0x3f3851ec    # 0.72f

    :goto_7
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v8, 0xdc

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    move v8, v2

    goto :goto_5

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v6

    :cond_c
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_d
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_e
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_f
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_10
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_11
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_12
    return-void

    :pswitch_5
    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    const-string v2, "this$0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;

    const-string v2, "this$1"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_19

    iget-boolean v3, v0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->movedBeyondSlop:Z

    if-eqz v3, :cond_13

    goto/16 :goto_a

    :cond_13
    iput-boolean v7, v0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;->longPressStarted:Z

    invoke-static {v1, v2, v7}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->access$requestAncestorsDisallowIntercept(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;Z)V

    invoke-virtual {v2, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    instance-of v0, v2, Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/deepalhome/launcher/widget/MagiskWidgetPrecheckStore;->INSTANCE:Lcom/deepalhome/launcher/widget/MagiskWidgetPrecheckStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    const-string v3, "magisk_widget_prechecked"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_9

    :cond_14
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getDesktopWidgets()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object v3, v3, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    const-class v4, Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v8, v7

    :cond_17
    :goto_8
    xor-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_18

    sget-object v0, Lcom/deepalhome/launcher/task/MagiskActivationManager;->INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager;

    new-instance v3, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;

    invoke-direct {v3, v1, v2}, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;-><init>(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;

    const-wide/16 v1, 0xfa0

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;-><init>(JLkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    goto :goto_a

    :cond_18
    :goto_9
    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->startWidgetDrag(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    :cond_19
    :goto_a
    return-void

    :pswitch_6
    sget v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->$r8$clinit:I

    const-string v1, "this$0"

    iget-object v4, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->exitMultiSelectMode()V

    goto :goto_b

    :cond_1a
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    return-void

    :pswitch_7
    sget v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->$r8$clinit:I

    iget-object v2, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const-string v3, "this$0"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const-string v3, "$existingFiles"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "substring(...)"

    const-string v4, "getName(...)"

    const-string v9, "Wallpaper - "

    :try_start_1
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "HHmmss"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v10}, Lkotlin/text/StringsKt___StringsKt;->takeLast(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    goto :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_14

    :cond_1b
    :goto_c
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0x2000

    :try_start_2
    new-array v9, v9, [B

    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    move v14, v7

    :goto_e
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v15, 0x2e

    invoke-static {v13, v15, v8, v5}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v13

    const/16 v15, 0x5f

    if-lez v13, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_f
    move-object v13, v5

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_13

    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :goto_10
    add-int/2addr v14, v7

    const/4 v5, 0x6

    const/4 v6, 0x0

    goto :goto_e

    :cond_1d
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_11
    :try_start_3
    invoke-virtual {v5, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_1e

    invoke-virtual {v1, v9, v8, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_12

    :cond_1e
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v6, 0x0

    :try_start_4
    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x6

    const/4 v6, 0x0

    goto/16 :goto_d

    :goto_12
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_1f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v6, v10

    goto :goto_15

    :goto_13
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :goto_14
    const-string v1, "WallpaperManagement"

    const-string v3, "Failed to create zip"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    :goto_15
    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v6, v2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_8
    const-string v1, "$callback"

    iget-object v2, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "page"

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    iget-wide v3, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->requestToken:J

    iget-wide v5, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_20

    goto :goto_16

    :cond_20
    invoke-static {v1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->access$applyPage(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    :goto_16
    return-void

    :pswitch_9
    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v2, "cleaned_wallpaper_cache_0.9.52"

    :try_start_a
    sget-object v3, Lcom/deepalhome/launcher/wallpaper/Category;->Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    const-string v4, "wallpaper_category_cache"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperHashCache;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperHashCache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    const-string v4, "wallpaper_hash_cache"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    invoke-direct {v3, v8}, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;-><init>(I)V

    iget-object v4, v3, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    iget-object v5, v3, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->baseDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v3, v3, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->baseDir:Ljava/io/File;

    invoke-static {v3}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    goto :goto_17

    :catchall_5
    move-exception v0

    goto :goto_18

    :cond_21
    :goto_17
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    monitor-exit v4

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_22

    move v8, v7

    :cond_22
    xor-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_23

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/util/GlideSuppliers$1;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/GlideSuppliers$1;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1a

    :catch_1
    move-exception v0

    goto :goto_19

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_18
    monitor-exit v4

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :goto_19
    const-string v1, "WallpaperCacheMaintenance"

    const-string v2, "Failed to clean wallpaper cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void

    :pswitch_a
    const-string v1, "this$0"

    iget-object v2, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$posterView"

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, v2, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez v3, :cond_24

    goto :goto_1b

    :cond_24
    invoke-interface {v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_25

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->notifyWallpaperFrameReady()V

    :cond_25
    :goto_1b
    return-void

    :pswitch_b
    sget v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    const-string v1, "this$0"

    iget-object v4, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_1c

    :cond_26
    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->exitMultiSelectMode()V

    goto :goto_1c

    :cond_27
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    return-void

    :pswitch_c
    sget v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    const-string v1, "this$0"

    iget-object v2, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$deletedCount"

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_1d

    :cond_28
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1301dc

    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->exitMultiSelectMode()V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->refreshList()V

    :goto_1d
    return-void

    :pswitch_d
    sget v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    iget-object v2, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string v3, "$icon"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    const-string v3, "this$0"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->deleteIcon(Lcom/deepalhome/launcher/floating/CachedIcon;)Z

    move-result v3

    new-instance v4, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v3, v2, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;ZLjava/lang/Object;I)V

    invoke-static {v4}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_e
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    const-string v2, "this$0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_1e

    :cond_29
    iput-boolean v8, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isDownloading:Z

    iget-object v2, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_2d

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2c

    iput-object v0, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadedLibraryFile:Ljava/io/File;

    sget-object v2, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    iget-object v4, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->save(Ljava/io/File;Ljava/lang/String;)V

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatBallIconDownloadCache;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatBallIconDownloadCache;

    iget-object v4, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "url"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const-string v5, "float_ball_icon_download_cache"

    invoke-virtual {v2, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v0, 0x7f1301e3

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->applyBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    :cond_2a
    const-string v0, "applyBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_2b
    const/4 v1, 0x0

    const-string v0, "downloadBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2c
    invoke-virtual {v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->resetDownloadBtn()V

    const v0, 0x7f1301e2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :goto_1e
    return-void

    :cond_2d
    const/4 v1, 0x0

    const-string v0, "downloadProgressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_f
    sget v1, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->$r8$clinit:I

    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-string v2, "$context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    const-string v2, "this$0"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    return-void

    :pswitch_10
    iget-object v1, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v1, Lme/wcy/lrcview/LrcView;

    iget-object v0, v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
