.class public final Lcom/petterp/floatingx/view/FxDefaultContainerView;
.super Lcom/petterp/floatingx/view/FxBasicContainerView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private downTouchX:F

.field private downTouchY:F


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "context"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/petterp/floatingx/view/FxBasicContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/petterp/floatingx/view/FxDefaultContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final initLayoutParams()V
    .locals 2

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800033

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 1

    invoke-super {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->initView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxDefaultContainerView;->initLayoutParams()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->installChildView()Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onTouchCancel(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/petterp/floatingx/view/FxDefaultContainerView;->downTouchX:F

    iput p1, p0, Lcom/petterp/floatingx/view/FxDefaultContainerView;->downTouchY:F

    return-void
.end method

.method public onTouchDown(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/petterp/floatingx/view/FxDefaultContainerView;->downTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/petterp/floatingx/view/FxDefaultContainerView;->downTouchY:F

    return-void
.end method

.method public onTouchMove(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, p0, Lcom/petterp/floatingx/view/FxDefaultContainerView;->downTouchX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    iget v2, p0, Lcom/petterp/floatingx/view/FxDefaultContainerView;->downTouchY:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->safeUpdatingXY(FF)V

    return-void
.end method

.method public parentSize()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public updateXY(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method
