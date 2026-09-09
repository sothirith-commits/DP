.class public final synthetic Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $adbStatusTv:Landroid/widget/TextView;

.field final synthetic $binding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

.field final synthetic $suStatusTv:Landroid/widget/TextView;

.field final synthetic $summaryTv:Landroid/widget/TextView;

.field final synthetic $wifiStatusTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->this$0:Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$binding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$summaryTv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$wifiStatusTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$adbStatusTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$suStatusTv:Landroid/widget/TextView;

    const-class p2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string p3, "applyResult"

    const/4 p1, 0x1

    const-string p4, "show$applyResult(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/deepalhome/launcher/task/MagiskPrecheckResult;)V"

    const/4 p5, 0x0

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;

    const-string v0, "p0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->this$0:Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$binding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$summaryTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$wifiStatusTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$adbStatusTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;->$suStatusTv:Landroid/widget/TextView;

    iput-object p1, v0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->latestResult:Lcom/deepalhome/launcher/task/MagiskPrecheckResult;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->isChecking:Z

    iget-object v5, v1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->getCanProceed()Z

    move-result v5

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->context:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->confirmButtonText:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    const v5, 0x7f1302d9

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(...)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v5, 0x7f1302dd

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->message:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->getCanProceed()Z

    move-result v1

    iget v5, v0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->failColor:I

    iget v7, v0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->passColor:I

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f1302e0

    iget-boolean v2, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->wifiPassed:Z

    if-eqz v2, :cond_3

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const v8, 0x7f1302e6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    move v9, v7

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_3
    const v10, 0x7f1302e7

    invoke-static {v0, v3, v10, v8, v9}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show$updateStatusView(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/widget/TextView;ILjava/lang/String;I)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f1302e1

    iget-boolean v8, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->adbPassed:Z

    if-nez v2, :cond_5

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_6
    const v9, 0x7f1302d6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v10, v0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->hintColor:I

    if-nez v2, :cond_7

    move v11, v10

    goto :goto_5

    :cond_7
    if-eqz v8, :cond_8

    move v11, v7

    goto :goto_5

    :cond_8
    move v11, v5

    :goto_5
    const v12, 0x7f1302d7

    invoke-static {v0, v4, v12, v9, v11}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show$updateStatusView(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/widget/TextView;ILjava/lang/String;I)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->suPassed:Z

    if-eqz v2, :cond_b

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    const v1, 0x7f1302e2

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    :goto_6
    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v2, :cond_d

    if-nez v8, :cond_c

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_e

    move v5, v7

    goto :goto_9

    :cond_d
    :goto_8
    move v5, v10

    :cond_e
    :goto_9
    const p1, 0x7f1302e3

    invoke-static {v0, p0, p1, v1, v5}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show$updateStatusView(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/widget/TextView;ILjava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
