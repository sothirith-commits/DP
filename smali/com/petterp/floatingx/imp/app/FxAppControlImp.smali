.class public final Lcom/petterp/floatingx/imp/app/FxAppControlImp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public _animationProvider:Lcom/umeng/analytics/pro/ah;

.field public _configControl:Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

.field public final helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

.field public platformProvider:Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;I)V
    .locals 0

    iput p2, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->$r8$classId:I

    const-string p2, "helper"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getManagerView()Landroid/widget/FrameLayout;

    move-result-object v0

    instance-of v1, v0, Lcom/petterp/floatingx/view/FxBasicContainerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/petterp/floatingx/view/FxBasicContainerView;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->preCancelAction$floatingx_release()V

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->isShow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_animationProvider:Lcom/umeng/analytics/pro/ah;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_2
    const-string p0, "_animationProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->reset()V

    return-void
.end method

.method public createConfigProvider(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)Lcom/petterp/floatingx/imp/FxBasicConfigProvider;
    .locals 1

    iget v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->createConfigProvider$com$petterp$floatingx$imp$FxBasisControlImp(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    check-cast p2, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    const-string p0, "f"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/petterp/floatingx/imp/system/FxSystemConfigProvider;

    invoke-direct {p0, p1, p2}, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final createConfigProvider$com$petterp$floatingx$imp$FxBasisControlImp(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)Lcom/petterp/floatingx/imp/FxBasicConfigProvider;
    .locals 0

    const-string p0, "f"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

    invoke-direct {p0, p1, p2}, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)V

    return-object p0
.end method

.method public final createPlatformProvider(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;)Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;
    .locals 1

    iget v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    const-string v0, "f"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    check-cast v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    invoke-direct {p1, v0, p0}, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/app/FxAppControlImp;)V

    return-object p1

    :pswitch_0
    check-cast p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    const-string v0, "f"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;

    invoke-direct {v0, p1, p0}, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/app/FxAppControlImp;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getManagerView()Landroid/widget/FrameLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->getInternalView()Lcom/petterp/floatingx/view/IFxInternalHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/petterp/floatingx/view/IFxInternalHelper;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->platformProvider:Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "platformProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->setEnableFx$floatingx_release(Z)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getManagerView()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v0

    const-string v1, "fxView -> hideFx"

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_animationProvider:Lcom/umeng/analytics/pro/ah;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->hide$1()V

    return-void

    :cond_2
    const-string p0, "_animationProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final reset()V
    .locals 3

    iget v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->reset$com$petterp$floatingx$imp$FxBasisControlImp()V

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->INSTANCE:Lcom/petterp/floatingx/FloatingX;

    iget-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    check-cast v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-object v1, v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->reset$com$petterp$floatingx$imp$FxBasisControlImp()V

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->INSTANCE:Lcom/petterp/floatingx/FloatingX;

    iget-object v1, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    check-cast v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-object v1, v1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final reset$com$petterp$floatingx$imp$FxBasisControlImp()V
    .locals 2

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/petterp/floatingx/listener/provider/IFxBasicProvider;->reset()V

    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_animationProvider:Lcom/umeng/analytics/pro/ah;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ah;->reset()V

    iget-object p0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    iget-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->reInstall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->reInstall:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->setEnableFx$floatingx_release(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    const-string v0, "fxView-lifecycle-> code->cancelFx"

    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "_animationProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->setEnableFx$floatingx_release(Z)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->checkOrInit()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getManagerView()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->show()V

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v0

    const-string v1, "fxView -> showFx"

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_animationProvider:Lcom/umeng/analytics/pro/ah;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3
    const-string p0, "_animationProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
