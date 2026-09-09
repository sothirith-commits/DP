.class public final synthetic Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, -0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    const-string v3, "this$0"

    const/4 v4, 0x0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isApplying:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadedLibraryFile:Ljava/io/File;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isApplying:Z

    iget-object v1, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->applyBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/16 v1, 0xc

    invoke-direct {v0, v3, p0, v2, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_3
    const-string p0, "applyBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isDownloading:Z

    if-nez p0, :cond_9

    iget-object p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v1, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isDownloading:Z

    iget-object p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "downloadBtn"

    if-eqz p0, :cond_8

    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p0, :cond_7

    const-string v5, ""

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, v2, v4}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    const-string p0, "downloadProgressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_1
    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isDownloading:Z

    if-nez p0, :cond_a

    iget-boolean p0, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->isApplying:Z

    if-nez p0, :cond_a

    invoke-virtual {v2, v4, v4}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
