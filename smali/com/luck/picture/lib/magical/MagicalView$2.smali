.class public final Lcom/luck/picture/lib/magical/MagicalView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/magical/MagicalView;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/magical/MagicalView;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView$2;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView$2;->this$0:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView$2;->this$0:Lcom/luck/picture/lib/magical/MagicalView;

    iget p0, p0, Lcom/luck/picture/lib/magical/MagicalView$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/luck/picture/lib/magical/MagicalView;->onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitPictureSelector()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onBackCurrentFragment()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    sget p0, Lcom/luck/picture/lib/magical/MagicalView;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/luck/picture/lib/magical/MagicalView;->setShowEndParams()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
