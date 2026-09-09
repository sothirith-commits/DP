.class public final Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $position:I

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public wasCanceled:Z


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->this$0:Ljava/lang/Object;

    iput p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/motion/MaterialSideContainerBackHelper;ZI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->this$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->wasCanceled:Z

    iput p3, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->wasCanceled:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    iget-object v0, p1, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->wasCanceled:Z

    iget p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$position:I

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->updateBackProgress(FZI)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->wasCanceled:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/app/AppCenterView;

    iget p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;->$position:I

    invoke-static {v0, p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$finishPageSwitch(Lcom/deepalhome/launcher/app/AppCenterView;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
