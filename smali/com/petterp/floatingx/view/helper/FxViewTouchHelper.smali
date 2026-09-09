.class public final Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;
.super Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;
.source "SourceFile"


# instance fields
.field public initX:F

.field public initY:F

.field public isClickEvent:Z

.field public scaledTouchSlop:F

.field public touchDownId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    return-void
.end method


# virtual methods
.method public final initConfig(Lcom/petterp/floatingx/view/FxBasicContainerView;)V
    .locals 1

    const-string v0, "parentView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->initConfig(Lcom/petterp/floatingx/view/FxBasicContainerView;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->scaledTouchSlop:F

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->resetConfig()V

    return-void
.end method

.method public final initTouchDown(Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initY:F

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableClickListener:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    :cond_1
    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    iget-object v0, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->onTouchDown(Landroid/view/MotionEvent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/petterp/floatingx/listener/IFxTouchListener;->onDown()V

    :goto_1
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p1

    iget p0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "fxView -> initDownTouch,mainTouchId:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final isCurrentPointerId(Landroid/view/MotionEvent;)Z
    .locals 3

    iget v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->getPointerId(Landroid/view/MotionEvent;)I

    move-result p1

    iget p0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    if-ne p1, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final resetConfig()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initX:F

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->isClickEvent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    return-void
.end method
