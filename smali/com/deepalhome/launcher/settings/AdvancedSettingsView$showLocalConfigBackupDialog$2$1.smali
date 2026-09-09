.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

.field label:I

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;-><init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1$zipFile$1;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/io/File;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    const-string v0, "getString(...)"

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v4, 0x7f130064

    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v2, p0, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->access$showLocalConfigBackupDialog$showBackupResult(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v1, p0, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->access$showLocalConfigBackupDialog$showBackupResult(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/StoragePermissionUtils;

    sget-object p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1$1;->INSTANCE:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showLocalConfigBackupDialog$2$1$1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f130452

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->requestStoragePermission(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
