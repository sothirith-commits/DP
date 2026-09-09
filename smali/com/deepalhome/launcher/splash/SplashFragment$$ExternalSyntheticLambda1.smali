.class public final synthetic Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 p1, 0x0

    const-string v0, "$onSelected"

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "this$1"

    const-string v4, "$holder"

    const-string v5, "this$0"

    iget-object v6, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object v7, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    iget-object v8, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget-object v9, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$ViewHolder;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    if-eq p0, v2, :cond_0

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;

    invoke-direct {p1, p0, v8, v7}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;-><init>(ILcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;)V

    iget-object p0, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-static {v8, p0, p1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->access$animateListItemOut(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    if-eq p0, v2, :cond_1

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$7$1;

    invoke-direct {p1, p0, v8, v7}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$7$1;-><init>(ILcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;)V

    iget-object p0, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-static {v8, p0, p1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->access$animateListItemOut(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->normalizeVoiceText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x7f130169

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setSelection(I)V

    const p0, 0x7f13016b

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v7, Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :pswitch_2
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    check-cast v9, Landroid/widget/TimePicker;

    invoke-virtual {v9}, Landroid/widget/TimePicker;->getHour()I

    move-result p1

    invoke-virtual {v9}, Landroid/widget/TimePicker;->getMinute()I

    move-result v0

    check-cast v6, Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getHour()I

    move-result v1

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getMinute()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;-><init>(IIII)V

    invoke-interface {v8, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v7, Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    const-string p0, "$backupJob"

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$dialogBinding"

    check-cast v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$dialog"

    check-cast v7, Landroid/app/Dialog;

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p0

    if-ne p0, v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v6, v7, v0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showLocalConfigBackupDialog$setLoadingState(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;

    invoke-direct {v3, v7, v8, v6, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;-><init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_1
    return-void

    :pswitch_4
    const-string p0, "$splashWindowBinding"

    check-cast v9, Lcom/deepalhome/launcher/databinding/SplashWindowBinding;

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$dismissRunnable"

    check-cast v6, Ljava/lang/Runnable;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lcom/deepalhome/launcher/splash/SplashFragment;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v9, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    check-cast v7, Lcom/hjq/window/EasyWindow;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/hjq/window/EasyWindow;->cancel()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
