.class public final synthetic Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    return-void

    :pswitch_1
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$horizontalAnchor"

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$verticalAnchor"

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
