.class public final Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string v0, "icon"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->selectOnlyMode:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->onIconSelected:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getResId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_2
    const p0, 0x7f08013b

    :goto_0
    sget-object p1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->updateIcon$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;I)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconLibraryPath(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->setCurrentIconPath(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->onIconApplied:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const p0, 0x7f130241

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_1

    :cond_4
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p1, v1, v3}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
