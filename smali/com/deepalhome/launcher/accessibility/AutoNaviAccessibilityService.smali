.class public final Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

.field public static final LIMIT_DIALOG_KEYWORDS:Ljava/util/List;

.field public static final SUPPORTED_MAP_PACKAGES:Ljava/util/List;

.field public static instance:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;


# instance fields
.field public final autoNaviReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

.field public final handler:Landroid/os/Handler;

.field public final heartbeatRunnable:Landroidx/appcompat/widget/Toolbar$2;

.field public final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile isDestroyed:Z

.field public volatile lastLimitDialogClickAt:J

.field public volatile lastPhoneLocationDialogClickAt:J

.field public volatile limitDialogCheckUntil:J

.field public pendingLimitDialogCancel:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

.field public pendingPhoneLocationConfirm:Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;

.field public receiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    const-string v0, "com.android.launcher3"

    const-string v1, "com.huawei.maps.car.app"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->SUPPORTED_MAP_PACKAGES:Ljava/util/List;

    const-string v0, "Lane closure"

    const-string v1, "Pothole"

    const-string v2, "Road blocked"

    const-string v3, "Narrow road"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->LIMIT_DIALOG_KEYWORDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->heartbeatRunnable:Landroidx/appcompat/widget/Toolbar$2;

    new-instance v0, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->autoNaviReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    return-void
.end method

.method public static clickNodeByText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1

    if-nez p1, :cond_5

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eq v1, v0, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    const/16 p1, 0x10

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    if-eq v1, v0, :cond_5

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0

    :cond_6
    return p1
.end method

.method public static containsText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method


# virtual methods
.method public final clearPendingAutoNavi()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "auto_navi_accessibility"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_at"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clickNavButtonInternal()V
    .locals 8

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->getActiveRoots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_3
    move-object v4, v5

    :goto_0
    const-string v6, "com.android.launcher3"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x10

    if-eqz v6, :cond_5

    const-string v6, "com.android.launcher3:id/route_bottom_nav_tv"

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    if-nez v2, :cond_9

    :cond_5
    const-string v6, "com.huawei.maps.car.app"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "com.huawei.maps.car.app:id/route_naviclick_navigation_button"

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    if-nez v2, :cond_9

    :cond_7
    if-nez v2, :cond_8

    sget-object v5, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->SUPPORTED_MAP_PACKAGES:Ljava/util/List;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v2, "Start navigation"

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->clickNodeByText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_9

    :cond_8
    if-eqz v2, :cond_2

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_4

    :cond_c
    throw p0
.end method

.method public final getActiveRoots()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final handleLimitBeforeStartNavigation()V
    .locals 9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->pendingLimitDialogCancel:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastLimitDialogClickAt:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->scanLimitDialog(Z)Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;->present:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->clickNavButtonInternal()V

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->scanLimitDialog(Z)Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;

    move-result-object v0

    iget-boolean v5, v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;->present:Z

    if-eqz v5, :cond_5

    iget-boolean v0, v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;->clicked:Z

    if-eqz v0, :cond_4

    iput-wide v3, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastLimitDialogClickAt:J

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->clickNavButtonInternal()V

    return-void
.end method

.method public final isReadyForAutoNavi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isDestroyed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->SUPPORTED_MAP_PACKAGES:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->limitDialogCheckUntil:J

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto/16 :goto_6

    :cond_7
    sget-object v6, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->SUPPORTED_MAP_PACKAGES:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android.widget.RelativeLayout"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastPhoneLocationDialogClickAt:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-gez v0, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->pendingPhoneLocationConfirm:Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    move-object v0, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_b
    move-object v5, v4

    :goto_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v6

    const-string v7, "getText(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const-string v8, "Received location sent from phone"

    const/4 v9, 0x1

    if-nez v7, :cond_d

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_c

    invoke-static {v7, v8, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-ne v7, v9, :cond_c

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_e
    move-object v6, v4

    :goto_4
    if-eqz v6, :cond_f

    invoke-static {v6, v8, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-ne v6, v9, :cond_f

    goto :goto_5

    :cond_f
    move v9, v1

    :goto_5
    new-instance v6, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v0, v5, v9}, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->pendingPhoneLocationConfirm:Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->limitDialogCheckUntil:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_11

    goto :goto_7

    :cond_11
    iget-wide v7, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastLimitDialogClickAt:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-gez v0, :cond_12

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->pendingLimitDialogCancel:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_7

    :cond_14
    sget-object v5, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->SUPPORTED_MAP_PACKAGES:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_16
    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->scanLimitDialog(Z)Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;

    move-result-object p1

    iget-boolean p1, p1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;->present:Z

    if-nez p1, :cond_17

    goto :goto_7

    :cond_17
    new-instance p1, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, v4}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->pendingLimitDialogCancel:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    :goto_7
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isDestroyed:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->heartbeatRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->receiverRegistered:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->autoNaviReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    iput-boolean v1, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->receiverRegistered:Z

    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "auto_navi_accessibility"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "heartbeat_at"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-object v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->instance:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    return-void
.end method

.method public final onInterrupt()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->heartbeatRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected()V
    .locals 9

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isDestroyed:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sput-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->instance:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->receiverRegistered:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.deepalhome.launcher.action.AUTO_NAVI"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->autoNaviReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const/4 v4, 0x4

    invoke-static {p0, v3, v1, v4}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    iput-boolean v2, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->receiverRegistered:Z

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->heartbeatRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v4, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "heartbeat_at"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "auto_navi_accessibility"

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pending_at"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-gtz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    move v0, v2

    :cond_3
    if-nez v0, :cond_4

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->scheduleAutoNaviInternal()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->clearPendingAutoNavi()V

    :goto_1
    return-void
.end method

.method public final performAutoNaviAction()V
    .locals 6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->getActiveRoots()Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->SUPPORTED_MAP_PACKAGES:Ljava/util/List;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    if-eqz v1, :cond_5

    new-instance v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.launcher3"

    const-string v5, "com.android.launcher3.activity.LauncherActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v4}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_6

    :cond_7
    throw p0
.end method

.method public final scanLimitDialog(Z)Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;
    .locals 9

    const-string v0, "Cancel"

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->getActiveRoots()Ljava/util/ArrayList;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const/4 v6, 0x0

    :goto_1
    sget-object v7, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->SUPPORTED_MAP_PACKAGES:Ljava/util/List;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->LIMIT_DIALOG_KEYWORDS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->containsText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    invoke-static {v5, v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->containsText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    if-eqz p1, :cond_5

    if-nez v3, :cond_5

    invoke-static {v5, v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->clickNodeByText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    move v4, v8

    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;

    invoke-direct {p0, v4, v3}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;-><init>(ZZ)V

    return-object p0

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_5

    :cond_9
    throw p1
.end method

.method public final scheduleAutoNaviInternal()V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
