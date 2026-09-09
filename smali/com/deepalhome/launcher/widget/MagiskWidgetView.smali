.class public final Lcom/deepalhome/launcher/widget/MagiskWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# instance fields
.field public blurInitialized:Z

.field public isNightMode:Z

.field public isRootReady:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    sget-object p1, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/deepalhome/launcher/util/RootAccessState;->isRoot:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    new-instance p1, Lcom/deepalhome/launcher/widget/MagiskWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/MagiskWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyBlurRadius$6()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

.method public final applyStyle()V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08019f

    goto :goto_0

    :cond_0
    const v1, 0x7f08026c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060019

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isNightMode:Z

    if-eqz v2, :cond_2

    const v2, 0x7f06002b

    goto :goto_1

    :cond_2
    const v2, 0x7f060398

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v2, v2, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    const v2, 0x7f060397

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isNightMode:Z

    if-eqz v1, :cond_4

    const v1, 0x7f060099

    goto :goto_2

    :cond_4
    const v1, 0x7f060098

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v3, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean v2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isNightMode:Z

    if-eqz v2, :cond_6

    const v2, 0x7f06038c

    goto :goto_3

    :cond_6
    const v2, 0x7f06038b

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->labelTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyBlurRadius$6()V

    return-void
.end method

.method public final applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V
    .locals 1

    const-string v0, "style"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->sanitize()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyStyle()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0083

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->refreshRootState()V

    return-void
.end method

.method public final onClicked()V
    .locals 5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/deepalhome/launcher/util/RootAccessState;->isRoot:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyStyle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1302d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lcom/deepalhome/launcher/task/MagiskActivationManager;->INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager;

    new-instance v2, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1;-><init>(Lcom/deepalhome/launcher/widget/MagiskWidgetView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$2;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v4, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;

    invoke-direct {v4, p0, v0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;-><init>(Lcom/deepalhome/launcher/widget/MagiskWidgetView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/task/MagiskActivationManager$executeActivation$1;

    invoke-direct {p0, v4, v2, v3}, Lcom/deepalhome/launcher/task/MagiskActivationManager$executeActivation$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyStyle()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->refreshRootState()V

    return-void
.end method

.method public final refreshRootState()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/deepalhome/launcher/util/RootAccessState;->hasChecked:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/deepalhome/launcher/util/RootAccessState;->isRoot:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyStyle()V

    return-void

    :cond_0
    new-instance v0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$refreshRootState$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView$refreshRootState$1;-><init>(Lcom/deepalhome/launcher/widget/MagiskWidgetView;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/RootAccessState;->runAfterStartupCheck(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyBlurRadius$6()V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isNightMode:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyStyle()V

    return-void
.end method
