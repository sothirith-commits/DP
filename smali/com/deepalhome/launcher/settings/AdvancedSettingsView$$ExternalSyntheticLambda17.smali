.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

.field public final synthetic f$2:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

.field public final synthetic f$3:Landroid/app/Dialog;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;ZLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$1:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$2:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$3:Landroid/app/Dialog;

    iput-boolean p5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$4:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$5:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    sget p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    const-string p1, "$importJob"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$dialogBinding"

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$1:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$0"

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$2:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$dialog"

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$3:Landroid/app/Dialog;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$file"

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$5:Ljava/io/File;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v6, v3, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showConfigImportDialog$setLoadingState$63(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130076

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v10, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;

    const/4 v7, 0x0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;->f$4:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1;-><init>(ZLandroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Ljava/io/File;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_0
    return-void
.end method
