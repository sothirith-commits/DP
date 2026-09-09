.class public final synthetic Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "this$0"

    iget v5, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    if-nez p0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->activeOverlays:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    const-string v4, "activeOverlays"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v3

    :goto_2
    iput-boolean p0, v0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-eq v1, p0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    const/4 p0, 0x2

    invoke-static {v0, v3, v2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    if-eqz v1, :cond_4

    iget-boolean p0, v0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-nez p0, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/map/MapAppWindow;->cancelMapRecovery()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/map/MapAppWindow;->postNextRecovery()V

    goto :goto_4

    :cond_4
    iget-boolean p0, v0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/map/MapAppWindow;->cancelMapRecovery()V

    :cond_5
    :goto_4
    return-void

    :pswitch_1
    sget-object v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    iget-object v0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    if-eqz p0, :cond_7

    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const p0, 0x7f130248

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_5

    :cond_7
    const p0, 0x7f130245

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :goto_5
    return-void

    :pswitch_2
    iget-object v3, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v3, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSrVisibility: visible="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " view="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->srView:Landroid/view/View;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v1

    :goto_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->srView:Landroid/view/View;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CarSRCardHost"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_a

    move v1, v2

    goto :goto_7

    :cond_a
    move v1, v0

    :goto_7
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v3, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->srView:Landroid/view/View;

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    if-eqz p0, :cond_c

    move v0, v2

    :cond_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object v0, v3, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->onSrVisibilityChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_d

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void

    :pswitch_3
    iget-object v2, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    sget-object v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->pendingPhoneLocationConfirm:Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_b

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastPhoneLocationDialogClickAt:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7d0

    cmp-long v1, v5, v7

    if-gez v1, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->getActiveRoots()Ljava/util/ArrayList;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p0, :cond_11

    const-string v7, "Received location from phone"

    invoke-static {v6, v7}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->containsText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_c

    :cond_11
    const-string v7, "Confirm"

    invoke-static {v6, v7}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->clickNodeByText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    iput-wide v3, v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastPhoneLocationDialogClickAt:J

    iget-object p0, v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_a

    :cond_13
    :goto_b
    return-void

    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_d

    :cond_14
    throw p0

    :pswitch_4
    const-string v0, "$callbacks"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
