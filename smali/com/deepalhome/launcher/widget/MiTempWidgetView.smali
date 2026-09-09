.class public final Lcom/deepalhome/launcher/widget/MiTempWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public blurInitialized:Z

.field public deviceCollectJob:Lkotlinx/coroutines/Job;

.field public isNightMode:Z

.field public latestDevices:Ljava/util/List;

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public overlayHost:Landroid/view/ViewGroup;

.field public final popupContent:Landroid/widget/LinearLayout;

.field public final popupListContainer:Landroid/widget/LinearLayout;

.field public selectorOverlay:Landroid/widget/FrameLayout;

.field public widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p2, Lcom/deepalhome/launcher/widget/MiTempWidgetView$maxBlurRadius$2;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->latestDevices:Ljava/util/List;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->popupListContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x7f0700a1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumWidth(I)V

    const p1, 0x7f0700b7

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result p1

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    const p1, 0x7f07009e

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setElevation(F)V

    iput-object v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->popupContent:Landroid/widget/LinearLayout;

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyBlurRadius$7()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->applyBlurRadius$7()V

    return-void
.end method

.method public final bindToDevice(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    :goto_2
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final buildPopupItem(Ljava/lang/String;ZZILkotlin/jvm/functions/Function0;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p4, 0x7f0700b3

    invoke-virtual {p0, p4}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setMinHeight(I)V

    const/16 p4, 0x10

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setGravity(I)V

    const v2, 0x7f07009a

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v4

    const v5, 0x7f070097

    invoke-virtual {p0, v5}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v6

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v6, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f060019

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v0, 0x0

    if-nez p3, :cond_3

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-boolean v4, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x40

    goto :goto_1

    :cond_4
    const/16 v4, 0x24

    :goto_1
    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    :goto_2
    if-nez p3, :cond_5

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-boolean p2, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz p2, :cond_6

    const/16 p2, 0x6e

    goto :goto_3

    :cond_6
    const/16 p2, 0x5a

    :goto_3
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_5

    :cond_7
    iget-boolean p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060098

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    :goto_4
    iget-boolean p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz p1, :cond_9

    const/16 p4, 0x12

    :cond_9
    invoke-static {v3, p4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_5
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {p0, v2, p1, v0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->roundedRect(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setFocusable(Z)V

    if-eqz p3, :cond_a

    if-eqz p5, :cond_a

    new-instance p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;

    const/4 p1, 0x5

    invoke-direct {p0, p5, p1}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-object v1
.end method

.method public final dismissDeviceSelector()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->selectorOverlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->selectorOverlay:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final dp(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0095

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryChip:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->renderPreview()V

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->refreshContent(Ljava/util/List;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->deviceCollectJob:Lkotlinx/coroutines/Job;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/deepalhome/launcher/widget/MiTempWidgetView$onAttachedToWindow$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$onAttachedToWindow$1;-><init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->deviceCollectJob:Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->deviceCollectJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->deviceCollectJob:Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dismissDeviceSelector()V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryChip:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->updatedTextTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->statusWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->renderPreview()V

    return-void
.end method

.method public final refreshContent(Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryChip:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->latestDevices:Ljava/util/List;

    invoke-virtual/range {p0 .. p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->resolveSelectedDevice(Ljava/util/List;)Lcom/deepalhome/mitemp/MiTempDevice;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v5, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    const-string v6, "rawName"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "LYWSD03MMC"

    invoke-static {v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v2, :cond_0

    move v4, v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->updatedTextTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->statusWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->refreshPopupContent(Ljava/util/List;)V

    const v1, 0x7f130318

    const v4, 0x7f13031a

    const v5, 0x7f130317

    const-string v6, "getString(...)"

    if-nez v3, :cond_1

    new-instance v3, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f13031b

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->statusColor(Lcom/deepalhome/mitemp/MiConnectionStatus;)I

    move-result v8

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    iget-object v7, v3, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x25

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v10, v7

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f13031d

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    move-object v11, v5

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v7, v11

    const-wide/32 v11, 0xea60

    cmp-long v7, v7, v11

    if-gez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f13031c

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v15, 0xea60

    const/high16 v17, 0x40000

    invoke-static/range {v11 .. v17}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    if-eqz v5, :cond_6

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget v4, v5, Lcom/deepalhome/mitemp/MiReading;->temperatureCelsius:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v7, "%.1f"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object v12, v4

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :goto_6
    if-eqz v5, :cond_8

    iget v4, v5, Lcom/deepalhome/mitemp/MiReading;->humidityPercent:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    move-object v13, v4

    goto :goto_8

    :cond_8
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v13, v1

    :goto_8
    iget-object v1, v3, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->statusColor(Lcom/deepalhome/mitemp/MiConnectionStatus;)I

    move-result v9

    new-instance v3, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryValueTv:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;->batteryText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->updatedTextTv:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;->updatedText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->temperatureValueTv:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;->temperatureText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityValueTv:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;->humidityText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->statusDotView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget v2, v3, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WidgetUiState;->statusColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final refreshPopupContent(Ljava/util/List;)V
    .locals 15

    move-object v6, p0

    iget-object v7, v6, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->popupListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, v6, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v8

    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object v9, v8

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130319

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->buildPopupItem(Ljava/lang/String;ZZILkotlin/jvm/functions/Function0;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move v0, v11

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v12, v0, 0x1

    if-ltz v0, :cond_5

    check-cast v1, Lcom/deepalhome/mitemp/MiTempDevice;

    sget-object v2, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->displayName(Lcom/deepalhome/mitemp/MiTempDevice;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v0, :cond_4

    move v4, v11

    goto :goto_4

    :cond_4
    const v0, 0x7f0700b5

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v0

    move v4, v0

    :goto_4
    new-instance v5, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;

    move-object/from16 v13, p1

    invoke-direct {v5, p0, v1, v13}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;-><init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;Lcom/deepalhome/mitemp/MiTempDevice;Ljava/util/List;)V

    const/4 v14, 0x1

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->buildPopupItem(Ljava/lang/String;ZZILkotlin/jvm/functions/Function0;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v12

    goto :goto_3

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v8

    :cond_6
    return-void
.end method

.method public final renderPreview()V
    .locals 6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryChip:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->updatedTextTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->statusWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13031c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->statusColor(Lcom/deepalhome/mitemp/MiConnectionStatus;)I

    move-result v1

    const-string v2, "87%"

    const-string v3, "23.6"

    const-string v4, "61%"

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryValueTv:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->updatedTextTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->temperatureValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->statusDotView:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final resolveSelectedDevice(Ljava/util/List;)Lcom/deepalhome/mitemp/MiTempDevice;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v2, v2, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p1

    :cond_4
    check-cast v1, Lcom/deepalhome/mitemp/MiTempDevice;

    return-object v1

    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p1, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->bindToDevice(Ljava/lang/String;)V

    return-object p1
.end method

.method public final roundedRect(IFI)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->applyBlurRadius$7()V

    return-void
.end method

.method public setOverlayHost(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->overlayHost:Landroid/view/ViewGroup;

    return-void
.end method

.method public final statusColor(Lcom/deepalhome/mitemp/MiConnectionStatus;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/widget/MiTempWidgetView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060098

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    iget-boolean p0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x3d

    goto :goto_2

    :cond_2
    const/16 p0, 0x42

    :goto_2
    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    goto :goto_3

    :cond_3
    const-string p0, "#FFA500"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    goto :goto_3

    :cond_4
    const-string p0, "#39B476"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    :goto_3
    return p0
.end method

.method public final updateUIMode(Z)V
    .locals 10

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->isNightMode:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f06038a

    goto :goto_1

    :cond_1
    const v2, 0x7f060389

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryValueTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->updatedTextTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->temperatureValueTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->temperatureUnitTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityValueTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryChip:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    const/16 v2, 0xf

    :goto_2
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    goto :goto_3

    :cond_2
    const/16 v2, 0x33

    goto :goto_2

    :goto_3
    const/16 v3, 0x1a

    if-eqz p1, :cond_3

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    goto :goto_4

    :cond_3
    const/16 v4, 0x47

    invoke-static {v1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    :goto_4
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {p0, v2, v5, v4}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->roundedRect(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->tempCard:Landroid/widget/FrameLayout;

    const/16 v2, 0x2e

    const/16 v4, 0xd

    if-eqz p1, :cond_4

    invoke-static {v1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    goto :goto_5

    :cond_4
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    :goto_5
    const/16 v7, 0x42

    const/16 v8, 0x14

    if-eqz p1, :cond_5

    invoke-static {v1, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    goto :goto_6

    :cond_5
    invoke-static {v1, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    :goto_6
    invoke-virtual {p0, v6, v5, v9}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->roundedRect(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityCard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    invoke-static {v1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    goto :goto_7

    :cond_6
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    :goto_7
    if-eqz p1, :cond_7

    invoke-static {v1, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    goto :goto_8

    :cond_7
    invoke-static {v1, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    :goto_8
    invoke-virtual {p0, v2, v5, v4}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->roundedRect(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->popupContent:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    const-string v2, "#E61C2127"

    :goto_9
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_a

    :cond_8
    const-string v2, "#F2FFFFFF"

    goto :goto_9

    :goto_a
    if-eqz p1, :cond_9

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    goto :goto_b

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060098

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/16 v1, 0x18

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    :goto_b
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v2, v1, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->roundedRect(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->latestDevices:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->refreshPopupContent(Ljava/util/List;)V

    return-void
.end method
