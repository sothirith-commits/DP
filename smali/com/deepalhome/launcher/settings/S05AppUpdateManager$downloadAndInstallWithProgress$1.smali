.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;


# instance fields
.field public final synthetic $cancelButton:Landroid/widget/TextView;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $dialog:Landroid/app/Dialog;

.field public final synthetic $input:Landroid/widget/EditText;

.field public final synthetic $okButton:Landroid/widget/TextView;

.field public final synthetic $onResetDownloading:Lkotlin/jvm/functions/Function0;

.field public final synthetic $progressBar:Landroid/widget/ProgressBar;

.field public final synthetic $progressText:Landroid/widget/TextView;

.field public final synthetic $setProgressAreaVisible:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;Landroid/widget/EditText;Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$okButton:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$dialog:Landroid/app/Dialog;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$onResetDownloading:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$input:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$cancelButton:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$setProgressAreaVisible:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;)V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$onResetDownloading:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$okButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$context:Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0x7f130418

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$cancelButton:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const p1, 0x7f13041d

    goto :goto_3

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    const p1, 0x7f130424

    goto :goto_3

    :cond_5
    const p1, 0x7f130419

    :goto_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$setProgressAreaVisible:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->$progressText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
