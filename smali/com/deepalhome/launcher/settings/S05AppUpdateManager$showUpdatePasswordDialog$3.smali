.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $accentColor:I

.field final synthetic $cellEmptyBorderColor:I

.field final synthetic $cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $hiddenInput:Landroid/widget/EditText;

.field final synthetic $info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

.field final synthetic $inputInteraction:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $progressBar:Landroid/widget/ProgressBar;

.field final synthetic $progressText:Landroid/widget/TextView;

.field final synthetic $strokeWidth:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/EditText;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/TextView;Landroid/content/Context;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;Landroid/widget/ProgressBar;Ljava/util/ArrayList;III)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$hiddenInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$inputInteraction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressText:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressBar:Landroid/widget/ProgressBar;

    iput-object p9, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$cells:Ljava/util/List;

    iput p10, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$cellEmptyBorderColor:I

    iput p11, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$accentColor:I

    iput p12, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$strokeWidth:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v3, ""

    if-nez v1, :cond_2

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const v0, 0x7f130420

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto/16 :goto_4

    :cond_3
    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v6, "dialog"

    if-eqz v4, :cond_e

    check-cast v4, Landroid/app/Dialog;

    const v7, 0x7f0b040a

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_d

    check-cast v4, Landroid/app/Dialog;

    const v7, 0x7f0b00eb

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$inputInteraction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_c

    check-cast v4, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->hideKeyboard()V

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$hiddenInput:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$hiddenInput:Landroid/widget/EditText;

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$cells:Ljava/util/List;

    iget v9, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$cellEmptyBorderColor:I

    iget v10, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$accentColor:I

    iget v12, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$strokeWidth:I

    const/16 v21, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v12

    invoke-static/range {v16 .. v21}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->showUpdatePasswordDialog$updateCells(Landroid/widget/EditText;Ljava/util/List;IIIZ)V

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    if-nez v15, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressBar:Landroid/widget/ProgressBar;

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressText:Landroid/widget/TextView;

    invoke-static {v4, v8, v5, v5}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->showUpdatePasswordDialog$setProgressAreaVisible(Landroid/widget/ProgressBar;Landroid/widget/TextView;ZZ)V

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressText:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$context:Landroid/content/Context;

    const v8, 0x7f13041c

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_b

    check-cast v4, Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_a

    check-cast v4, Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget-object v4, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$context:Landroid/content/Context;

    iget-object v14, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    iget-object v13, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$hiddenInput:Landroid/widget/EditText;

    iget-object v9, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressBar:Landroid/widget/ProgressBar;

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressText:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v7, :cond_9

    move-object v12, v7

    check-cast v12, Landroid/app/Dialog;

    new-instance v6, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressBar:Landroid/widget/ProgressBar;

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$progressText:Landroid/widget/TextView;

    invoke-direct {v6, v7, v8}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;-><init>(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    new-instance v23, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$hiddenInput:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$cells:Ljava/util/List;

    move-object/from16 v24, v3

    iget v3, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$cellEmptyBorderColor:I

    move-object/from16 v25, v13

    iget v13, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$accentColor:I

    iget v0, v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;->$strokeWidth:I

    move-object/from16 v16, v23

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v0

    invoke-direct/range {v16 .. v22}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/EditText;Ljava/util/List;III)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;

    move-object v7, v0

    move-object v8, v5

    move-object/from16 v2, v25

    move-object/from16 v13, v23

    move-object v3, v14

    move-object v14, v2

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;-><init>(Landroid/content/Context;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;Landroid/widget/EditText;Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;)V

    const-string v2, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "info"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_7

    move-object/from16 v2, v24

    :cond_7
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;->DOWNLOAD:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstallWithProgress$1;->onFailure(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadFailure;)V

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    invoke-interface {v4, v2, v1}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->downloadS05AppUpdate(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/Util$8;

    const/16 v4, 0x11

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/koushikdutta/async/Util$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    const-string v1, "inputInteraction"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
