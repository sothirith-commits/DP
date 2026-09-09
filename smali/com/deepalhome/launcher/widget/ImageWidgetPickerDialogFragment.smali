.class public final Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;
.super Lcom/deepalhome/launcher/base/BaseBottomSheetDialogFragment;
.source "SourceFile"


# instance fields
.field public final adapter:Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

.field public binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

.field public final localImagePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public onImageSelected:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0e0068

    invoke-direct {p0, v0}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    new-instance v1, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;-><init>(Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;)V

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;-><init>(Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->adapter:Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->localImagePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->setStyle()V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f06038f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v0, 0x7f0e0068

    invoke-virtual {p2, p1, v0}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    const-string p2, "bind(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    iget-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    const v3, 0x7f06038c

    goto :goto_0

    :cond_0
    const v3, 0x7f06038b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    if-eqz p2, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060389

    const v4, 0x7f06038a

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->subtitleTv:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    if-eqz p1, :cond_12

    new-instance p2, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v2, 0x1b

    invoke-direct {p2, v2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->localImageBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    if-eqz p1, :cond_11

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->wallpaperRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->wallpaperRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->adapter:Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object p1, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntryFactory;->INSTANCE:Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntryFactory;

    const v2, 0x7f13025c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x7f13025b

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->imageExtensions:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloadsByExtensions(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "getAbsolutePath(...)"

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    new-instance v7, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "wallpaper:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->get(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v7, v8, v9, v6, v2}, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->listIcons()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v7}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lcom/deepalhome/launcher/floating/CachedIcon;->isGif()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_8

    move-object v7, v0

    goto :goto_5

    :cond_8
    new-instance v7, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "floating:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "getName(...)"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v7, v8, v9, v5, v4}, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v7, :cond_7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;

    iget-object v5, v5, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->items:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    if-eqz p2, :cond_f

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_c

    move v4, v3

    goto :goto_7

    :cond_c
    move v4, v2

    :goto_7
    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->wallpaperRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;

    if-eqz p0, :cond_e

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    move v2, v3

    :goto_8
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
