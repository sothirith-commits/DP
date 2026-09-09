.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lme/wcy/lrcview/LrcView;


# direct methods
.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;I)V
    .locals 0

    iput p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;->f$0:Lme/wcy/lrcview/LrcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;->f$0:Lme/wcy/lrcview/LrcView;

    iget p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lme/wcy/lrcview/LrcView;->$r8$clinit:I

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->notifyLineHeightChanged()V

    return-void

    :pswitch_0
    const-string p0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_1
    sget p0, Lme/wcy/lrcview/LrcView;->$r8$clinit:I

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->notifyLineHeightChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
