.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070362

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "tab_type"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->Companion:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;->getALL()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->getTabType()Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "event"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4f2ed89c

    const/4 v4, 0x0

    if-eq v0, v1, :cond_7

    const p2, 0x7beea935

    if-eq v0, p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "event_multi_select_exited"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->isInMultiSelectMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->multiSelectBar:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->normalBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v0, "event_selection_changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "count"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "all_selected"

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->isInMultiSelectMode:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->updateSelectionCount(IZ)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
