.class public final Lcom/hjq/window/ActivityWindowLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public mActivity:Ljava/lang/Object;

.field public mEasyWindow:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/app/FxAppControlImp;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "appControl"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mEasyWindow:Ljava/lang/Object;

    sget-object p0, Lkotlin/LazyThreadSafetyMode;->$VALUES:[Lkotlin/LazyThreadSafetyMode;

    new-instance p0, Lcom/petterp/floatingx/imp/app/FxAppLifecycleImp$special$$inlined$lazyLoad$default$1;

    invoke-direct {p0}, Lcom/petterp/floatingx/imp/app/FxAppLifecycleImp$special$$inlined$lazyLoad$default$1;-><init>()V

    invoke-static {p0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method

.method private final onActivityCreated$com$hjq$window$ActivityWindowLifecycle(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private final onActivityResumed$com$hjq$window$ActivityWindowLifecycle(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private final onActivitySaveInstanceState$com$hjq$window$ActivityWindowLifecycle(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private final onActivityStarted$com$hjq$window$ActivityWindowLifecycle(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private final onActivityStopped$com$hjq$window$ActivityWindowLifecycle(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAppLifecycleCallBack()V
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget p2, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "activity"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/ActivityWindowLifecycle;->getAppLifecycleCallBack()V

    :goto_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "activity"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean v2, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/ActivityWindowLifecycle;->getAppLifecycleCallBack()V

    iget-object p0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mEasyWindow:Ljava/lang/Object;

    check-cast p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getManagerView()Landroid/widget/FrameLayout;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->getDecorView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fxApp->check detach: isContainActivity-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isCanInstall$floatingx_release(Landroid/app/Activity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "--enableFx-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "---isParent-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->getDecorView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    if-eq p1, v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    invoke-static {v1, p0}, Lokhttp3/logging/Utf8Kt;->safeRemoveView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_8
    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    if-eq v1, p1, :cond_9

    goto :goto_4

    :cond_9
    iput-object v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    iget-object p1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mEasyWindow:Ljava/lang/Object;

    check-cast p1, Lcom/hjq/window/EasyWindow;

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    iget-boolean v1, p1, Lcom/hjq/window/EasyWindow;->mShowing:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_b
    iget-object v1, p1, Lcom/hjq/window/EasyWindow;->mActivityWindowLifecycle:Lcom/hjq/window/ActivityWindowLifecycle;

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v2, v1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_d
    :goto_3
    iput-object v0, p1, Lcom/hjq/window/EasyWindow;->mContext:Landroid/content/Context;

    iput-object v0, p1, Lcom/hjq/window/EasyWindow;->mDecorView:Lcom/hjq/window/WindowLayout;

    iput-object v0, p1, Lcom/hjq/window/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p1, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p1, Lcom/hjq/window/EasyWindow;->mActivityWindowLifecycle:Lcom/hjq/window/ActivityWindowLifecycle;

    sget-object v1, Lcom/hjq/window/EasyWindow;->sWindowInstanceSet:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mEasyWindow:Ljava/lang/Object;

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/ActivityWindowLifecycle;->getAppLifecycleCallBack()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    if-ne v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mEasyWindow:Ljava/lang/Object;

    check-cast p0, Lcom/hjq/window/EasyWindow;

    if-eqz p0, :cond_2

    iget-boolean p1, p0, Lcom/hjq/window/EasyWindow;->mShowing:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    iget v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean v1, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fxApp->insert, insert ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Start ---------->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isCanInstall$floatingx_release(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/hjq/window/ActivityWindowLifecycle;->getAppLifecycleCallBack()V

    iget-object p0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mEasyWindow:Ljava/lang/Object;

    check-cast p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getManagerView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->getDecorView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v5

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Fail ,The current Activity has been inserted."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v0

    check-cast v0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;

    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->getDecorView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object p0

    if-ne p1, p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    invoke-static {p0, v1}, Lokhttp3/logging/Utf8Kt;->safeRemoveView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_1
    iget-object p0, v0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    invoke-static {p1, p0, v3}, Lokhttp3/logging/Utf8Kt;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Fail ,This activity is not in the list of allowed inserts."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    :goto_2
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "outState"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/ActivityWindowLifecycle;->getAppLifecycleCallBack()V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/hjq/window/ActivityWindowLifecycle;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hjq/window/ActivityWindowLifecycle;->mActivity:Ljava/lang/Object;

    check-cast p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/ActivityWindowLifecycle;->getAppLifecycleCallBack()V

    :goto_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
