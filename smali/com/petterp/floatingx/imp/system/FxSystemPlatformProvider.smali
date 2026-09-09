.class public final Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;


# instance fields
.field public _internalView:Lcom/petterp/floatingx/view/FxSystemContainerView;

.field public _lifecycleImp:Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;

.field public final control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

.field public final helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

.field public wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/app/FxAppControlImp;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "control"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iput-object p2, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    return-void
.end method


# virtual methods
.method public final checkOrInit()Z
    .locals 11

    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxSystemContainerView;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_lifecycleImp:Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;

    iget-object v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;

    invoke-direct {v0, v1, p0}, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;)V

    iput-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_lifecycleImp:Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;

    iget-object v2, v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    invoke-static {}, Lokhttp3/logging/Utf8Kt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isCanInstall$floatingx_release(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fx not show,This ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] is not in the list of allowed inserts!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v3, v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    invoke-static {v3}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->wm:Landroid/view/WindowManager;

    new-instance v0, Lcom/petterp/floatingx/view/FxSystemContainerView;

    iget-object v6, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->wm:Landroid/view/WindowManager;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    const/16 v9, 0x8

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    const/4 v8, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/petterp/floatingx/view/FxSystemContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Landroid/view/WindowManager;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxSystemContainerView;

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->initView()V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->internalAskAutoPermission$floatingx_release(Landroid/app/Activity;)V

    :goto_0
    return v3
.end method

.method public final getInternalView()Lcom/petterp/floatingx/view/IFxInternalHelper;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxSystemContainerView;

    return-object p0
.end method

.method public final hide$1()V
    .locals 1

    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxSystemContainerView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final internalAskAutoPermission$floatingx_release(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->fxAskPermissionInterceptor:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->scope:Lcom/petterp/floatingx/assist/FxScopeType;

    sget-object v3, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM_AUTO:Lcom/petterp/floatingx/assist/FxScopeType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->isShow(Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tag:["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] requestPermission start---->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    goto/16 :goto_2

    :cond_4
    instance-of v1, p1, Landroidx/fragment/app/FragmentActivity;

    const/4 v3, 0x0

    const-string v6, "FxPermissionFragment"

    if-eqz v1, :cond_6

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/petterp/floatingx/util/FxPermissionFragment;

    invoke-direct {v1}, Lcom/petterp/floatingx/util/FxPermissionFragment;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v8, v7}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v8, v5, v1, v6, v4}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v8, v4}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    :cond_5
    instance-of p1, v1, Lcom/petterp/floatingx/util/IFxPermissionControl;

    if-eqz p1, :cond_8

    move-object v3, v1

    check-cast v3, Lcom/petterp/floatingx/util/IFxPermissionControl;

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/petterp/floatingx/util/FxPermissionSupportFragment;

    invoke-direct {v1}, Lcom/petterp/floatingx/util/FxPermissionSupportFragment;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_7
    instance-of p1, v1, Lcom/petterp/floatingx/util/IFxPermissionControl;

    if-eqz p1, :cond_8

    move-object v3, v1

    check-cast v3, Lcom/petterp/floatingx/util/IFxPermissionControl;

    :cond_8
    :goto_1
    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;

    invoke-direct {p1, p0, v2}, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;-><init>(Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;Z)V

    invoke-interface {v3, v0, p1}, Lcom/petterp/floatingx/util/IFxPermissionControl;->requestPermission(Ljava/lang/String;Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;)V

    :goto_2
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

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->hide$1()V

    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->wm:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxSystemContainerView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :goto_0
    invoke-static {}, Lokhttp3/logging/Utf8Kt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v2

    invoke-static {v0, v2}, Lokio/Okio;->safeRemovePermissionFragment(Landroid/app/Activity;Lcom/petterp/floatingx/util/FxLog;)V

    :goto_1
    iget-object v0, v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    iget-object v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_lifecycleImp:Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_lifecycleImp:Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;

    return-void
.end method

.method public final show()V
    .locals 1

    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->_internalView:Lcom/petterp/floatingx/view/FxSystemContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->wm:Landroid/view/WindowManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->checkOrRegisterWM$floatingx_release(Landroid/view/WindowManager;)V

    return-void
.end method
