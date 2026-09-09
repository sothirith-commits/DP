.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    return-void
.end method


# virtual methods
.method public final addOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v0, 0x3

    invoke-static {p0, v1, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->addOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final currentGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->currentGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v0, 0x3

    invoke-static {p0, v1, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final removeOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->removeOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
