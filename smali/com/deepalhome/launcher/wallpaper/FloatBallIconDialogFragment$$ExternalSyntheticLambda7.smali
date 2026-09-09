.class public final synthetic Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;->f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;->f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    const-string v4, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, v3, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_5

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v3, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const-string v4, "downloadBtn"

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, v3, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f13019f

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f130182

    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p0, "downloadProgressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    iput-boolean p0, v3, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isApplying:Z

    iget-object v4, v3, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->applyBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_7

    const v1, 0x7f1301e1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->updateIconByFile$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;Ljava/lang/String;)V

    invoke-virtual {v3, p0, p0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    goto :goto_3

    :cond_7
    const p0, 0x7f1301e0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :goto_3
    return-void

    :cond_8
    const-string p0, "applyBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
