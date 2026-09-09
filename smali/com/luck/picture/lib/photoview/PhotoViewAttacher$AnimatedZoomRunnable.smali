.class public final Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mFocalX:F

.field public final mFocalY:F

.field public final mStartTime:J

.field public final mZoomEnd:F

.field public final mZoomStart:F

.field public final synthetic this$0:Lcom/luck/picture/lib/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    iput p4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iput p5, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    iput p2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iput p3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    iget v3, v2, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, v2, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    iget v4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    invoke-static {v3, v4, v0, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    invoke-virtual {v2}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v4

    div-float v6, v3, v4

    iget v7, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v8, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    iget-object v5, v2, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->onGestureListener:Lcom/umeng/analytics/pro/ah;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/umeng/analytics/pro/ah;->onScale(FFFFF)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, v2, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
