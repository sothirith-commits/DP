.class public final Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

.field public final synthetic val$ring:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;->this$0:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;->val$ring:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;->val$ring:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iget v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iget v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingRotation:F

    iget v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v4, v3

    rem-int/2addr v2, v4

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v2, v3, v2

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;->this$0:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mFinishing:Z

    const-wide/16 v1, 0x534

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRotationCount:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRotationCount:F

    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;->this$0:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRotationCount:F

    return-void
.end method
