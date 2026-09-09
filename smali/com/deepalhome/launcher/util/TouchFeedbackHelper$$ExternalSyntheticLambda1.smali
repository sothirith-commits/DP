.class public final synthetic Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JJI)V
    .locals 0

    iput p6, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->f$2:J

    iput-wide p4, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->f$3:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-wide v2, v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->f$2:J

    iget-wide v4, v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->f$3:J

    iget-object v6, v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget v0, v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$callback"

    check-cast v6, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v6, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressText:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    iget-object v10, v6, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$context:Landroid/content/Context;

    iget-object v6, v6, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$okButton:Landroid/widget/TextView;

    const-string v11, "getString(...)"

    if-lez v9, :cond_1

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const-wide/16 v12, 0x64

    mul-long/2addr v2, v12

    div-long v12, v2, v4

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x64

    invoke-static/range {v12 .. v17}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f13041a

    invoke-virtual {v10, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const-wide/16 v4, 0x400

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "MB"

    const-string v4, "GB"

    const-string v5, "KB"

    filled-new-array {v5, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    :goto_0
    cmpl-double v9, v2, v4

    const/4 v12, 0x2

    if-ltz v9, :cond_3

    if-ge v7, v12, :cond_3

    div-double/2addr v2, v4

    add-int/2addr v7, v1

    goto :goto_0

    :cond_3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aget-object v0, v0, v7

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1f %s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v1, 0x7f13041b

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :pswitch_0
    const-string v0, "$view"

    check-cast v6, Landroid/view/View;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f851eb8    # 1.04f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda29;

    const/4 v2, 0x3

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda29;-><init>(Landroid/view/View;JI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
