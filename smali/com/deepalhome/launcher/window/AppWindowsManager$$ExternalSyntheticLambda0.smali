.class public final synthetic Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:F

.field public final synthetic f$1:Lcom/deepalhome/launcher/window/WindowsView;


# direct methods
.method public synthetic constructor <init>(FLcom/deepalhome/launcher/window/WindowsView;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$0:F

    iput-object p2, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$view"

    iget-object v1, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$0:F

    const/4 p1, 0x0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    return-void

    :pswitch_0
    const-string v0, "$view"

    iget-object v1, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$0:F

    cmpl-float p1, p0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    div-float/2addr p1, p0

    sub-float/2addr v0, p1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    return-void

    :pswitch_1
    const-string v0, "$view"

    iget-object v1, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$0:F

    cmpl-float p1, p0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    div-float/2addr p1, p0

    sub-float/2addr v0, p1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    return-void

    :pswitch_2
    const-string v0, "$view"

    iget-object v1, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;->f$0:F

    const/4 p1, 0x0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    :cond_3
    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
