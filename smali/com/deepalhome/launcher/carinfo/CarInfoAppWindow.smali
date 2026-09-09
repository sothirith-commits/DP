.class public final Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;
.super Lcom/deepalhome/launcher/window/BaseAppWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/window/BaseAppWindow<",
        "Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public static final synthetic access$getCacheCarInfo(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;)Lcom/deepalhome/launcher/carinfo/CacheCarInfo;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0036

    return p0
.end method

.method public final onInit()V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tireFrontLeftIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tireFrontRightIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tireRearLeftIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tireRearRightIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->carIv:Landroid/widget/ImageView;

    sget-object v3, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getCarModelResId(Z)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->hybridRemainRangeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    const v1, 0x7f130449

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    const v1, 0x7f130240

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;-><init>(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getTotalRemainRange()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSocRemainRange()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getOilRemainRange()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getTirePressureFrontLeft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getTirePressureFrontRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getTirePressureRearLeft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->getCacheCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getTirePressureRearRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->updateTotalRemainRange()V

    return-void
.end method

.method public final updateTotalRemainRange()V
    .locals 2

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->carIv:Landroid/widget/ImageView;

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getCarModelResId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const v0, 0x7f060027

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    const v0, 0x7f06038c

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeValueUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalSocResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalOilResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->speedTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontLeftUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontRightUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearLeftUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearRightUnitTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const v0, 0x7f060024

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    const v0, 0x7f06038b

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeValueUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalSocResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalOilResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontLeftUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->speedTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontRightUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearLeftUnitTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearRightUnitTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
