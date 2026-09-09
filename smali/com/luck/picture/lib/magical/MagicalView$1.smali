.class public final Lcom/luck/picture/lib/magical/MagicalView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/magical/MagicalView;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/magical/MagicalView;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView$1;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView$1;->this$0:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView$1;->this$0:Lcom/luck/picture/lib/magical/MagicalView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->isAnimating:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    check-cast p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/luck/picture/lib/widget/TitleBar;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView$1;->this$0:Lcom/luck/picture/lib/magical/MagicalView;

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginTop:I

    int-to-float v3, p0

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageTop:I

    int-to-float v4, p0

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginLeft:I

    int-to-float v5, p0

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->targetEndLeft:I

    int-to-float v6, p0

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginWidth:I

    int-to-float v7, p0

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageWidth:I

    int-to-float v8, p0

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginHeight:I

    int-to-float v9, p0

    iget p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageHeight:I

    int-to-float v10, p0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/luck/picture/lib/magical/MagicalView;->showNormalMin(ZFFFFFFFFF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
