.class public final Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

.field public final synthetic val$ring:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;->this$0:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;->val$ring:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    iget-object p2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;->this$0:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    iget-boolean v0, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mFinishing:Z

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v3, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    const v4, 0x3f4ccccd    # 0.8f

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;->val$ring:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->updateRingColor(FLcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;)V

    iget v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingRotation:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v0, v4

    iget v4, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    mul-double/2addr v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v4, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    sub-float v1, v4, v1

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, v3, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v4, v3, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingRotation:F

    invoke-static {v0, p0, p1, p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    iput p0, v3, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    float-to-double v5, v0

    iget-wide v7, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    mul-double/2addr v7, v1

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v5, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingRotation:F

    invoke-static {p1, p0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->updateRingColor(FLcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;)V

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v7, p1, v6

    if-gtz v7, :cond_1

    div-float v7, p1, v6

    sub-float v8, v4, v0

    sget-object v9, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v9, v7}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    iput v7, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    :cond_1
    cmpl-float v2, p1, v6

    if-lez v2, :cond_2

    sub-float/2addr v4, v0

    sub-float v0, p1, v6

    div-float/2addr v0, v6

    sget-object v2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v2, v0}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    :cond_2
    const/high16 p0, 0x3e800000    # 0.25f

    mul-float/2addr p0, p1

    add-float/2addr p0, v5

    iput p0, v3, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/high16 p0, 0x43580000    # 216.0f

    mul-float/2addr p1, p0

    iget p0, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRotationCount:F

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x44870000    # 1080.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, p1

    iput p0, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method
