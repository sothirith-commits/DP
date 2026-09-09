.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$showGestureGuideDialog$dialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showGestureGuideDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setHasShownWindowsGestureGuide(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showGestureGuideDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showGestureGuideDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object p0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
