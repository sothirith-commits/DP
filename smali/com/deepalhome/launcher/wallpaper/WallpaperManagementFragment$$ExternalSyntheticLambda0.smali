.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/fragment/app/FragmentResultListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->navBarInsetBottom:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->navBarInsetBottom:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->updateNavBarInsets$1()V

    :cond_0
    return-object p2
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "tab_type"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string p1, "action"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "action_enter_multi_select"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    iget-boolean p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    if-nez p2, :cond_3

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    iget-object p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->dispatchSelectionChanged$1(I)V

    goto :goto_1

    :sswitch_1
    const-string p2, "action_export_selected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->exportSelected()V

    goto :goto_1

    :sswitch_2
    const-string p2, "action_toggle_select_all"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->toggleSelectAll()V

    goto :goto_1

    :sswitch_3
    const-string p2, "action_exit_multi_select"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->exitMultiSelectMode()V

    goto :goto_1

    :sswitch_4
    const-string p2, "action_refresh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->refreshList$1()V

    goto :goto_1

    :sswitch_5
    const-string p2, "action_delete_selected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->confirmDeleteSelected()V

    :cond_9
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3afd895a -> :sswitch_5
        -0x317cde2e -> :sswitch_4
        -0x14eccd86 -> :sswitch_3
        -0x9187c20 -> :sswitch_2
        0xfd4a2bd -> :sswitch_1
        0x35db3d72 -> :sswitch_0
    .end sparse-switch
.end method
