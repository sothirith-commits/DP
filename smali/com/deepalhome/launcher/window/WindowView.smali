.class public final Lcom/deepalhome/launcher/window/WindowView;
.super Lcom/deepalhome/launcher/window/BaseAppWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/window/BaseAppWindow<",
        "Lcom/deepalhome/launcher/databinding/WindowViewBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private windowPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/window/WindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowView;->windowPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final bindAppWindow(Lcom/deepalhome/launcher/window/BaseAppWindow;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepalhome/launcher/window/BaseAppWindow<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/deepalhome/launcher/pip/PipAppWindow;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/deepalhome/launcher/pip/PipAppWindow;

    iget-object v3, v2, Lcom/deepalhome/launcher/pip/PipAppWindow;->mainHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/pip/PipAppWindow;->stopCurrentAppAndReleaseResources()V

    iget-object v3, v2, Lcom/deepalhome/launcher/pip/PipAppWindow;->virtualDisplaySurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v4, v2, Lcom/deepalhome/launcher/pip/PipAppWindow;->virtualDisplaySurface:Landroid/view/Surface;

    const-string v3, ""

    iput-object v3, v2, Lcom/deepalhome/launcher/pip/PipAppWindow;->currentPackageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/deepalhome/launcher/pip/PipAppWindow;->currentClassName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/pip/PipAppWindow;->updateCardBackgroundState()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public final createDragSnapshot()Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowView;->getBoundAppWindow()Lcom/deepalhome/launcher/window/BaseAppWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/window/BaseAppWindow;->drawDragSnapshot(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    const-string v2, "dragBtn"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public endDrag()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->endDrag()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    const-string v0, "windowContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    instance-of v1, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->endDrag()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getBoundAppWindow()Lcom/deepalhome/launcher/window/BaseAppWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/deepalhome/launcher/window/BaseAppWindow<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0125

    return p0
.end method

.method public final getWindowPosition()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowView;->windowPosition:I

    return p0
.end method

.method public final hasBoundAppWindow()Z
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isContentLayoutReady()Z
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    instance-of v3, v0, Lcom/deepalhome/launcher/view/BaseView;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/deepalhome/launcher/view/BaseView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowView;->hasBoundAppWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public onInit()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->rootContainer:Lcom/deepalhome/launcher/view/RoundedFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070376

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->setCornerRadius(F)V

    return-void
.end method

.method public final requestContentLayoutSync()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    const-string v0, "windowContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setWindowPosition(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowView;->windowPosition:I

    return-void
.end method

.method public final startDrag()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    const-string v0, "windowContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    instance-of v1, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->startDragging()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public swapped()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    const-string v0, "windowContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    instance-of v1, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/window/BaseAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->swapped()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateUIMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    const p1, 0x7f08027a

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    const p1, 0x7f080279

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
