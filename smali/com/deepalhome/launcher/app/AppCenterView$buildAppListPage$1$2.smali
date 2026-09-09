.class public final Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

.field final synthetic $this_apply:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;Lcom/deepalhome/launcher/app/AppCenterView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->$appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    iput-object p3, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->$appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-object v0, v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/app/App;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->$appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->isEditMode:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$isShortcutEditMode$p(Lcom/deepalhome/launcher/app/AppCenterView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$toggleLeftShortcut(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/app/App;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v4, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getSelectableMaxCount(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f130446

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0, v1, v2, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->refreshShortcutSelectedState$default(Lcom/deepalhome/launcher/app/AppCenterView;Ljava/util/Set;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getNavBarEditorDelegate$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    move-result-object v0

    const-string v4, "binding"

    if-eqz v0, :cond_4

    check-cast v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    iget-object v0, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->currentShortcutPackages()Ljava/util/Set;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :goto_1
    iget-object v5, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v5}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getNavBarEditorDelegate$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    move-result-object v5

    if-eqz v5, :cond_8

    check-cast v5, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    iget-object v5, v5, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v5}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v1, v5, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->toggleShortcutApp(Lcom/deepalhome/launcher/app/App;)Z

    move-result p1

    if-ne p1, v2, :cond_8

    goto :goto_3

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f13038f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/AppUtil;->start(Ljava/lang/String;)V

    :cond_a
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
