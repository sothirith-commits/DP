.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

.field final synthetic $file:Ljava/io/File;

.field final synthetic $isZip:Z

.field label:I

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(ZLandroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Ljava/io/File;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$isZip:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$file:Ljava/io/File;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$isZip:Z

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$dialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$file:Ljava/io/File;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;-><init>(ZLandroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Ljava/io/File;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$isZip:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$file:Ljava/io/File;

    invoke-direct {v2, v4, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->label:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/deepalhome/launcher/config/ImportResult;

    goto :goto_3

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v3, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$json$1;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$file:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$json$1;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigBackupManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigBackupManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/config/ConfigBackupManager;->importConfig(Ljava/lang/String;)Lcom/deepalhome/launcher/config/ImportResult;

    move-result-object p1

    goto :goto_3

    :cond_7
    :goto_2
    new-instance p1, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    const-string v0, "empty_file"

    invoke-direct {p1, v0}, Lcom/deepalhome/launcher/config/ImportResult$ParseError;-><init>(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;->$dialog:Landroid/app/Dialog;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->access$resolveImportResultMessage(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/config/ImportResult;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showConfigImportDialog$setLoadingState$63(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V

    iget-object v2, v0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130184

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
