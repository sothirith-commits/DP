.class public final synthetic Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/Activity;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    iput p1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$3:I

    iput-boolean p6, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$4:Z

    iput-object p5, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$3:I

    iput-object p4, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$4:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v1, "$progressDialog"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    const-string v1, "$actions"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/util/Set;

    const-string v1, "$executingTaskIds"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v2, 0xf

    invoke-direct {v1, v2, v0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v6, 0x384

    invoke-static {v1, v6, v7}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    iget v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$3:I

    add-int/lit8 v4, v0, 0x1

    iget-boolean v6, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$4:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/task/TaskExecutor;->access$executeActions(Lcom/deepalhome/launcher/task/TaskExecutor;Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_0
    const-string v0, "$binding"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$countDownTimer"

    iget-object v2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v4, Landroid/app/AlertDialog;

    iget v5, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v5, v0, v3, v4, v1}, Lcom/deepalhome/launcher/util/DialogUtil;->adjustDialogContentHeights$shrinkIfNeeded(IILandroid/app/Activity;Landroid/app/Dialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;)V

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;->f$4:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p0, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/os/CountDownTimer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
