.class public final Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public blurInitialized:Z

.field public confirmedModeIndex:Ljava/lang/Integer;

.field public final executionResultListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;

.field public isNightMode:Z

.field public isPureElectricAvailable:Z

.field public isPureElectricSelected:Z

.field public isRuntimeListenersRegistered:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modes:Ljava/util/List;

.field public pendingActionIndex:Ljava/lang/Integer;

.field public final s05InfoChangedListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;

.field public final specialForcePureElectricToCitySwitchStateListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$specialForcePureElectricToCitySwitchStateListener$1;

.field public specialTransitionDisplayIndex:Ljava/lang/Integer;

.field public final vehiclePropertyListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    sget-object p2, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    const v0, 0x7f1301bc

    const/4 v1, 0x0

    const v2, 0x7f0800dd

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/task/model/TaskAction;Ljava/lang/Integer;II)V

    new-instance p2, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080158

    const v4, 0x7f1301b9

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/task/model/TaskAction;Ljava/lang/Integer;II)V

    new-instance v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f080159

    const v5, 0x7f1301ba

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/task/model/TaskAction;Ljava/lang/Integer;II)V

    new-instance v2, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    new-instance v3, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f08015a

    const v6, 0x7f1301bb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/task/model/TaskAction;Ljava/lang/Integer;II)V

    filled-new-array {p1, p2, v0, v2}, [Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->modes:Ljava/util/List;

    new-instance p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->vehiclePropertyListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->s05InfoChangedListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->executionResultListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$specialForcePureElectricToCitySwitchStateListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$specialForcePureElectricToCitySwitchStateListener$1;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->specialForcePureElectricToCitySwitchStateListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$specialForcePureElectricToCitySwitchStateListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-direct {p1, v1}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->loadCachedModeIndex$1()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeSceneValidated()Z

    move-result p2

    iput-boolean p2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeWidgetSelected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getModeViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final applyBlurRadius$5()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    return-void
.end method

.method public final applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V
    .locals 2

    const-string v0, "style"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->sanitize()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->applyBlurRadius$5()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0056

    return p0
.end method

.method public final loadCachedModeIndex$1()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getEnergyManagementMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->parseModeIndex$1(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isRuntimeListenersRegistered:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->s05InfoChangedListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addOnS05InfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->vehiclePropertyListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->executionResultListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;

    monitor-enter v0

    :try_start_0
    const-string v3, "listener"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->executionResultListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->specialForcePureElectricToCitySwitchStateListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$specialForcePureElectricToCitySwitchStateListener$1;

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->addOnSpecialForcePureElectricToCitySwitchStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->isSpecialForcePureElectricToCitySwitchInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->specialTransitionDisplayIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->loadCachedModeIndex$1()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeSceneValidated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeWidgetSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isRuntimeListenersRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->s05InfoChangedListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->vehiclePropertyListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->executionResultListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;

    monitor-enter v0

    :try_start_0
    const-string v2, "listener"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->executionResultListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->specialForcePureElectricToCitySwitchStateListener:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$specialForcePureElectricToCitySwitchStateListener$1;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->removeOnSpecialForcePureElectricToCitySwitchStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->specialTransitionDisplayIndex:Ljava/lang/Integer;

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->loadCachedModeIndex$1()Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    sget-object v5, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeSceneValidated()Z

    move-result v6

    iput-boolean v6, v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeWidgetSelected()Z

    move-result v5

    iput-boolean v5, v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modePureElectric:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->getModeViews()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_1

    check-cast v7, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;

    iget-object v9, v7, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;->icon:Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    iget v11, v11, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->iconRes:I

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    iget v9, v9, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->labelRes:I

    iget-object v10, v7, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;->label:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    new-instance v9, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0, v6, v2}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;II)V

    iget-object v6, v7, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v6, v8

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modePureElectric:Landroid/widget/LinearLayout;

    const-string v6, "modePureElectric"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modeCity:Landroid/widget/LinearLayout;

    const-string v7, "modeCity"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modeHighway:Landroid/widget/LinearLayout;

    const-string v8, "modeHighway"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modeMountain:Landroid/widget/LinearLayout;

    const-string v9, "modeMountain"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v9, v1, [Landroid/view/View;

    aput-object v5, v9, v3

    aput-object v6, v9, v4

    const/4 v5, 0x2

    aput-object v7, v9, v5

    aput-object v8, v9, v2

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v2, v9, v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v5, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v15, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$1;->INSTANCE:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$1;

    new-instance v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$2;

    invoke-direct {v6, v0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$2;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    new-instance v7, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$3;

    invoke-direct {v7, v0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$3;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    new-instance v8, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$4;

    invoke-direct {v8, v0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$4;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    new-instance v14, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$5;

    invoke-direct {v14, v0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$installActionGestureBridge$1$5;-><init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V

    const/16 v19, 0x0

    const/16 v23, 0x386

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v10, v5

    move-object/from16 v22, v14

    move/from16 v14, v16

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v10 .. v23}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    return-void
.end method

.method public final parseModeIndex$1(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    iget-object v2, v2, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->mode:Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    move-object v0, p0

    :cond_3
    return-object v0
.end method

.method public final refreshModeStates$2()V
    .locals 11

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->specialTransitionDisplayIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->specialTransitionDisplayIndex:Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->getModeViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_d

    check-cast v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;

    if-nez v5, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    if-eqz v8, :cond_4

    iget-boolean v9, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    move v9, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v9, v2

    :goto_4
    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_6

    :cond_5
    if-nez v1, :cond_7

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_7

    move v5, v2

    goto :goto_6

    :cond_7
    :goto_5
    move v5, v3

    :goto_6
    iget-object v8, v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setSelected(Z)V

    if-eqz v5, :cond_8

    const v8, 0x7f0800bc

    goto :goto_7

    :cond_8
    const v8, 0x7f0800bd

    :goto_7
    iget-object v10, v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v5, :cond_9

    const v5, 0x7f060397

    goto :goto_8

    :cond_9
    if-nez v9, :cond_b

    iget-boolean v5, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isNightMode:Z

    if-eqz v5, :cond_a

    const v5, 0x7f06038a

    goto :goto_8

    :cond_a
    const v5, 0x7f060389

    goto :goto_8

    :cond_b
    iget-boolean v5, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isNightMode:Z

    if-eqz v5, :cond_c

    const v5, 0x7f06038c

    goto :goto_8

    :cond_c
    const v5, 0x7f06038b

    :goto_8
    invoke-virtual {v8, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iget-object v8, v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v6, v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;->label:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move v5, v7

    goto :goto_1

    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_e
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    :goto_0
    return-void
.end method

.method public setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurRootView(Landroid/view/ViewGroup;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->applyBlurRadius$5()V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isNightMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    return-void
.end method
