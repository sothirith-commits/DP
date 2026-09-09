.class public final Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;


# instance fields
.field public _containerGroup:Ljava/lang/ref/WeakReference;

.field public _internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

.field public _lifecycleImp:Lcom/hjq/window/ActivityWindowLifecycle;

.field public final control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

.field public final helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

.field public final windowsInsetsListener:Lokhttp3/internal/Util$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/app/FxAppControlImp;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "control"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iput-object p2, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    new-instance v0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->windowsInsetsListener:Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    iget-boolean v0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_lifecycleImp:Lcom/hjq/window/ActivityWindowLifecycle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hjq/window/ActivityWindowLifecycle;

    invoke-direct {v0, p1, p2}, Lcom/hjq/window/ActivityWindowLifecycle;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/app/FxAppControlImp;)V

    iput-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_lifecycleImp:Lcom/hjq/window/ActivityWindowLifecycle;

    iget-object p0, p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final checkOrInit()Z
    .locals 11

    iget-object v6, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean v0, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_lifecycleImp:Lcom/hjq/window/ActivityWindowLifecycle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hjq/window/ActivityWindowLifecycle;

    iget-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    invoke-direct {v0, v6, v1}, Lcom/hjq/window/ActivityWindowLifecycle;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/app/FxAppControlImp;)V

    iput-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_lifecycleImp:Lcom/hjq/window/ActivityWindowLifecycle;

    iget-object v1, v6, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    :goto_0
    invoke-static {}, Lokhttp3/logging/Utf8Kt;->getTopActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    return v8

    :cond_2
    invoke-virtual {v6, v7}, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isCanInstall$floatingx_release(Landroid/app/Activity;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fx not show,This "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not in the list of allowed inserts!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return v9

    :cond_3
    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    if-nez v0, :cond_f

    new-instance v10, Lcom/petterp/floatingx/view/FxDefaultContainerView;

    iget-object v2, v6, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v10

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/petterp/floatingx/view/FxDefaultContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    invoke-virtual {v10}, Lcom/petterp/floatingx/view/FxDefaultContainerView;->initView()V

    iget-boolean v0, v6, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->enableSafeArea:Z

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    sget v0, Lcom/petterp/floatingx/util/_FxScreenExt;->screenHeightBf:I

    :try_start_0
    invoke-virtual {v7}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    iput v9, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->statsBarHeight:I

    invoke-virtual {v6}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v0

    iget v1, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->statsBarHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "system-> statusBarHeight-"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    sget v0, Lcom/petterp/floatingx/util/_FxScreenExt;->screenHeightBf:I

    const-string v0, "window"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    if-eqz v1, :cond_e

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v3, Lcom/petterp/floatingx/util/_FxScreenExt;->screenHeightBf:I

    if-ne v1, v3, :cond_6

    sget v0, Lcom/petterp/floatingx/util/_FxScreenExt;->navigationHeightBf:I

    goto :goto_2

    :cond_6
    sput v1, Lcom/petterp/floatingx/util/_FxScreenExt;->screenHeightBf:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    const-string v1, "wm.currentWindowMetrics"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const-string v1, "windowMetrics.windowInsets"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    const-string v1, "windowInsets.getInsetsIgnoringVisibility(typeMask)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sput v0, Lcom/petterp/floatingx/util/_FxScreenExt;->navigationHeightBf:I

    :goto_2
    iput v0, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->navigationBarHeight:I

    invoke-virtual {v6}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v0

    iget v1, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->navigationBarHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "system-> navigationBar-"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->windowsInsetsListener:Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :goto_3
    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {v7}, Lokhttp3/logging/Utf8Kt;->getDecorView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object v2

    if-ne v2, v1, :cond_a

    goto :goto_5

    :cond_a
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v2, v0}, Lokhttp3/logging/Utf8Kt;->safeRemoveView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_c
    :goto_4
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x0

    invoke-static {v1, v0, p0}, Lokhttp3/logging/Utf8Kt;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_5
    return v8
.end method

.method public final getContainerGroupView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    :goto_0
    return-object p0
.end method

.method public final getInternalView()Lcom/petterp/floatingx/view/IFxInternalHelper;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    return-object p0
.end method

.method public final hide$1()V
    .locals 2

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    invoke-static {v0, v1}, Lokhttp3/logging/Utf8Kt;->safeRemoveView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final isShow()Z
    .locals 0

    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->isShow(Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)Z

    move-result p0

    return p0
.end method

.method public final reset()V
    .locals 3

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->hide$1()V

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :goto_0
    iput-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :goto_1
    iput-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    iget-object v2, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_lifecycleImp:Lcom/hjq/window/ActivityWindowLifecycle;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_lifecycleImp:Lcom/hjq/window/ActivityWindowLifecycle;

    return-void
.end method

.method public final show()V
    .locals 4

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxDefaultContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lokhttp3/logging/Utf8Kt;->getTopActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lokhttp3/logging/Utf8Kt;->getDecorView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v3

    :goto_0
    if-eq v1, v3, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lokhttp3/logging/Utf8Kt;->getTopActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v2

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lokhttp3/logging/Utf8Kt;->getDecorView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v3

    :goto_1
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->_containerGroup:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    const-string v3, "view-----> reinitialize the fx container"

    invoke-virtual {v1, v3}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->getContainerGroupView()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0, v0, v2}, Lokhttp3/logging/Utf8Kt;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method
