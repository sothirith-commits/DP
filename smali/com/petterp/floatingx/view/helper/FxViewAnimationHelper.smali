.class public final Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;
.super Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;
.source "SourceFile"


# instance fields
.field public endX:F

.field public endY:F

.field public startX:F

.field public startY:F

.field public valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreCancel()V
    .locals 1

    iget-object v0, p0, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
