.class public abstract Lcom/deepalhome/launcher/widget/BaseWidgetView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/deepalhome/launcher/view/BaseView<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final descendantLocation:[I

.field private descendantTouchEventsEnabled:Z

.field private final dragTouchPoint:Landroid/graphics/Point;

.field private isPreview:Z

.field private onDeferredDragCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private onDeferredDragReady:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private onDeferredDragStart:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final rootLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->dragTouchPoint:Landroid/graphics/Point;

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->rootLocation:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->descendantLocation:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->descendantTouchEventsEnabled:Z

    return-void
.end method


# virtual methods
.method public final cancelDeferredDrag()V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragCancel:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getDescendantScreenLeft(Landroid/view/View;)I
    .locals 2

    const-string v0, "descendant"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->left:I

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    goto :goto_0

    :goto_1
    return p1
.end method

.method public final getDragTouchPoint()Landroid/graphics/Point;
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->dragTouchPoint:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getMoreMenuScreenLeft()I
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const v1, 0x7f0b00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string v1, "getRoot(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->getDescendantScreenLeft(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final getOnDeferredDragCancel()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragCancel:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnDeferredDragReady()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragReady:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnDeferredDragStart()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragStart:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final isPreview()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview:Z

    return p0
.end method

.method public final notifyDeferredDragReady()V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragReady:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->descendantTouchEventsEnabled:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final requestDeferredDragStart()Z
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragStart:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public setBlurEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 0

    const-string p0, "rootView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDescendantTouchEventsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->descendantTouchEventsEnabled:Z

    return-void
.end method

.method public final setOnDeferredDragCancel(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragCancel:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnDeferredDragReady(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragReady:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnDeferredDragStart(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onDeferredDragStart:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setOverlayHost(Landroid/view/ViewGroup;)V
    .locals 0

    const-string p0, "rootView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview:Z

    return-void
.end method

.method public final startDragg()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurEnabled(Z)V

    return-void
.end method

.method public final stopDragg()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurEnabled(Z)V

    return-void
.end method

.method public final updateDragTouchPoint(FF)V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->dragTouchPoint:Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public final updateDragTouchPoint(Landroid/view/View;FF)V
    .locals 3

    const-string v0, "descendant"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->rootLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->descendantLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->descendantLocation:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/BaseWidgetView;->rootLocation:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    add-float/2addr v0, p2

    const/4 p2, 0x1

    aget p1, p1, p2

    aget p2, v2, p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p3

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->updateDragTouchPoint(FF)V

    return-void
.end method
