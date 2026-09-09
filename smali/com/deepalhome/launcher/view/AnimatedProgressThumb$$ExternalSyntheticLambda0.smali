.class public final synthetic Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->$r8$lambda$7Oa6xOg3jH_ARH69hIYCQJDfjrU(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->$r8$lambda$EwjSyjxh7gd2eJZxu3i_JWPhob4(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->$r8$lambda$a1Omz76B9UZM4nXzhh_d6EI7c28(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->$r8$lambda$0MxevKeotwOHDhkxKlnZJXx9X1I(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
