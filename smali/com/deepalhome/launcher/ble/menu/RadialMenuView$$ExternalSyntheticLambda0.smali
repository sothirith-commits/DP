.class public final synthetic Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/ble/menu/RadialMenuView;II)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    iput p2, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;->f$1:I

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    const-string v2, "it"

    iget-object v3, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    const-string v4, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceScales:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p0, v0

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconScales:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p0, v0

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->$r8$clinit:I

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconScales:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p0, v0

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
