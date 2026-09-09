.class public final Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field public lastFocusX:F

.field public lastFocusY:F

.field public final synthetic this$0:Lcom/luck/picture/lib/photoview/CustomGestureDetector;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/photoview/CustomGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->this$0:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    const/4 p1, 0x0

    iput p1, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->lastFocusY:F

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->this$0:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    iget-object v0, v0, Lcom/luck/picture/lib/photoview/CustomGestureDetector;->mListener:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    iget v5, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->lastFocusX:F

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    iget v6, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->lastFocusY:F

    sub-float/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/pro/ah;->onScale(FFFFF)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->lastFocusX:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->lastFocusY:F

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->lastFocusX:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/photoview/CustomGestureDetector$1;->lastFocusY:F

    const/4 p0, 0x1

    return p0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
