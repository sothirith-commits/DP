.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v0, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;

    const-string p0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p1, v0, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->startX:F

    iget v1, v0, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->endX:F

    cmpg-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p1

    :goto_0
    iget v1, v0, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->startY:F

    iget v2, v0, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->endY:F

    cmpg-float v3, v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, v1, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    :goto_1
    iget-object p0, v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->updateXY(FF)V

    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, v0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_1
    check-cast v0, Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p1, p1

    iget-object v1, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput p0, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedAnimationProgress:F

    return-void

    :pswitch_2
    sget p0, Lme/wcy/lrcview/LrcView;->$r8$clinit:I

    check-cast v0, Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
