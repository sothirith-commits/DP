.class public final Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$2;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

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

    iget-object p0, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$2;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    iget-boolean v0, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->selectOnlyMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f130245

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f130244

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130247

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f130246

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p0, p1}, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f130184

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f130182

    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_1
    const/4 p0, 0x1

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
