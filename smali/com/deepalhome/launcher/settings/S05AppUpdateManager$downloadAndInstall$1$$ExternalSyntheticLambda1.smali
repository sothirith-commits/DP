.class public final synthetic Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$callback"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;->DOWNLOAD:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;

    check-cast p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->onFailure(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;)V

    return-void

    :pswitch_0
    const-string v0, "$callback"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;->VERIFY:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;

    check-cast p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->onFailure(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;)V

    return-void

    :pswitch_1
    const-string v0, "$callback"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$context:Landroid/content/Context;

    const v1, 0x7f130425

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$okButton:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
