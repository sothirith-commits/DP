.class public final Lcom/deepalhome/launcher/app/AppCenterView$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$5;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$5;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$5;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getNavBarEditorDelegate$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->toggleGridItemType(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    goto :goto_0

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
