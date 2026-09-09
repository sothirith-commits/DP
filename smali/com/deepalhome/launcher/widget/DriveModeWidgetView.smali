.class public final Lcom/deepalhome/launcher/widget/DriveModeWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public blurInitialized:Z

.field public confirmedModeIndex:Ljava/lang/Integer;

.field public isNightMode:Z

.field public isRuntimeListenersRegistered:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modes:Ljava/util/List;

.field public pendingModeIndex:Ljava/lang/Integer;

.field public final s05InfoChangedListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;

.field public final vehiclePropertyListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$vehiclePropertyListener$1;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    const/4 p2, 0x3

    const-string v0, "3"

    const v1, 0x7f0800be

    const v2, 0x7f1301a8

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;-><init>(Ljava/lang/String;III)V

    new-instance p2, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    const/4 v0, 0x1

    const-string v1, "1"

    const v2, 0x7f08007f

    const v3, 0x7f1301a6

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;-><init>(Ljava/lang/String;III)V

    new-instance v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    const/4 v1, 0x2

    const-string v2, "2"

    const v3, 0x7f080269

    const v4, 0x7f1301aa

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;-><init>(Ljava/lang/String;III)V

    new-instance v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    const/4 v2, 0x4

    const-string v3, "4"

    const v4, 0x7f0800c0

    const v5, 0x7f1301a9

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;-><init>(Ljava/lang/String;III)V

    new-instance v2, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    const-string v3, "0"

    const/4 v4, 0x0

    const v5, 0x7f0800c5

    const v6, 0x7f1301a7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;-><init>(Ljava/lang/String;III)V

    filled-new-array {p1, p2, v0, v1, v2}, [Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->modes:Ljava/util/List;

    new-instance p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$vehiclePropertyListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$vehiclePropertyListener$1;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->vehiclePropertyListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$vehiclePropertyListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->s05InfoChangedListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-direct {p1, v4}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->loadCachedModeIndex()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

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
            "Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final applyBlurRadius$4()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->applyBlurRadius$4()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0054

    return p0
.end method

.method public final loadCachedModeIndex()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05Info()Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    move-result-object v0

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->parseS05ModeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getDrivingMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->parseModeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->isRuntimeListenersRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->s05InfoChangedListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addOnS05InfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->vehiclePropertyListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$vehiclePropertyListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->pendingModeIndex:Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->loadCachedModeIndex()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->refreshModeStates$1()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->isRuntimeListenersRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->s05InfoChangedListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->vehiclePropertyListener:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$vehiclePropertyListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->loadCachedModeIndex()Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeExclusive:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->getModeViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_1

    check-cast v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    iget-object v8, v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;->icon:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    iget v10, v10, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->iconRes:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    iget v8, v8, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->labelRes:I

    iget-object v9, v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;->label:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    new-instance v8, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v4, v5}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;II)V

    iget-object v4, v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v4, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeEconomy:Landroid/widget/LinearLayout;

    const-string v4, "modeEconomy"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeComfort:Landroid/widget/LinearLayout;

    const-string v6, "modeComfort"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeSport:Landroid/widget/LinearLayout;

    const-string v7, "modeSport"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeExclusive:Landroid/widget/LinearLayout;

    const-string v8, "modeExclusive"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeCustom:Landroid/widget/LinearLayout;

    const-string v9, "modeCustom"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v9, v1, [Landroid/view/View;

    aput-object v3, v9, v5

    aput-object v4, v9, v2

    const/4 v3, 0x2

    aput-object v6, v9, v3

    const/4 v3, 0x3

    aput-object v7, v9, v3

    const/4 v3, 0x4

    aput-object v8, v9, v3

    :goto_2
    if-ge v5, v1, :cond_3

    aget-object v3, v9, v5

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v4, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v15, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$1;->INSTANCE:Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$1;

    new-instance v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$2;

    invoke-direct {v6, v0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$2;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    new-instance v7, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$3;

    invoke-direct {v7, v0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$3;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    new-instance v8, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$4;

    invoke-direct {v8, v0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$4;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    new-instance v14, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$5;

    invoke-direct {v14, v0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$installActionGestureBridge$1$5;-><init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V

    const/16 v19, 0x0

    const/16 v23, 0x386

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v10, v4

    move-object/from16 v22, v14

    move/from16 v14, v16

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v10 .. v23}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/2addr v5, v2

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->refreshModeStates$1()V

    return-void
.end method

.method public final parseModeIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    iget-object v2, v2, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->propertyValue:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    move-object v0, p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public final parseS05ModeIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v1, "Custom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    move p1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "Sport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "Comfort"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "Economy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x3

    :goto_1
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    iget v1, v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    if-ne v1, p1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-ltz v2, :cond_7

    move-object v0, p0

    :cond_7
    :goto_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xfc85f -> :sswitch_3
        0x105030 -> :sswitch_2
        0x11bcd8 -> :sswitch_1
        0x1f31559 -> :sswitch_0
    .end sparse-switch
.end method

.method public final refreshModeStates$1()V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->pendingModeIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->getModeViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_6

    check-cast v4, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    iget-object v6, v4, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v3, :cond_3

    const v6, 0x7f0800bc

    goto :goto_3

    :cond_3
    const v6, 0x7f0800bd

    :goto_3
    iget-object v7, v4, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v3, :cond_4

    const v3, 0x7f060397

    goto :goto_4

    :cond_4
    iget-boolean v3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->isNightMode:Z

    if-eqz v3, :cond_5

    const v3, 0x7f06038c

    goto :goto_4

    :cond_5
    const v3, 0x7f06038b

    :goto_4
    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v6, v4, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, v4, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;->label:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move v3, v5

    goto :goto_0

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_7
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->applyBlurRadius$4()V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->isNightMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->refreshModeStates$1()V

    return-void
.end method
