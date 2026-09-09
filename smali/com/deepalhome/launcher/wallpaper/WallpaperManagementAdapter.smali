.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# instance fields
.field public isMultiSelectMode:Z

.field public final latestItemPaths:Ljava/util/LinkedHashSet;

.field public final onDeleteClick:Lkotlin/jvm/functions/Function1;

.field public final onPreviewClick:Lkotlin/jvm/functions/Function1;

.field public final onSelectionChanged:Lkotlin/jvm/functions/Function1;

.field public final onSetClick:Lkotlin/jvm/functions/Function1;

.field public final selectedItems:Ljava/util/LinkedHashSet;

.field public final timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$1;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$2;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$3;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onSetClick:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onDeleteClick:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onPreviewClick:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onSelectionChanged:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p2

    const p3, 0x7f130498

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {p1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->latestItemPaths:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final getSelectedItems()Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final isAllSelected()Z
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->latestItemPaths:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v4, 0x1

    move-object/from16 v5, p1

    check-cast v5, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-object/from16 v6, p3

    check-cast v6, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    const-string v7, "holder"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v6, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v8

    if-eqz v8, :cond_1

    const v9, 0x7f060026

    goto :goto_0

    :cond_1
    const v9, 0x7f060023

    :goto_0
    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    if-eqz v8, :cond_2

    const v10, 0x7f06038c

    goto :goto_1

    :cond_2
    const v10, 0x7f06038b

    :goto_1
    invoke-virtual {v7, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    if-eqz v8, :cond_3

    const v8, 0x7f06038a

    goto :goto_2

    :cond_3
    const v8, 0x7f060389

    :goto_2
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v11, v8, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v11, :cond_4

    check-cast v8, Lcom/google/android/material/card/MaterialCardView;

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v8, v9}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :cond_5
    iget-object v8, v5, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->binding:Landroidx/databinding/ViewDataBinding;

    check-cast v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;

    iget-object v9, v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->infoTv:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->coverIv:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v11

    const-class v13, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v13}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v10

    check-cast v10, Lcom/bumptech/glide/RequestBuilder;

    const v11, 0x7f080231

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v10

    const-string v11, "placeholder(...)"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v10, Lcom/bumptech/glide/RequestBuilder;

    sget-object v11, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const-string v14, "getAbsolutePath(...)"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoFile(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v11}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v13, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v10

    const-string v11, "apply(...)"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v10, v7}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    sget-object v10, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;

    sget-object v11, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->get(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    :cond_7
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->withoutStoragePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getSize()J

    move-result-wide v13

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v11

    const v15, 0x7f1301ce

    invoke-virtual {v11, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v12, "getString(...)"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v16, 0x400

    cmp-long v16, v13, v16

    if-gez v16, :cond_8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    const v14, 0x7f1301cb

    invoke-virtual {v11, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v3, 0x7f030000

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v15, "getStringArray(...)"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    long-to-double v13, v13

    const-wide/high16 v17, 0x4090000000000000L    # 1024.0

    div-double v13, v13, v17

    const/4 v15, 0x0

    :goto_4
    cmpl-double v19, v13, v17

    if-ltz v19, :cond_9

    array-length v2, v3

    sub-int/2addr v2, v4

    if-ge v15, v2, :cond_9

    const/16 v2, 0x400

    int-to-double v1, v2

    div-double/2addr v13, v1

    add-int/2addr v15, v4

    move/from16 v1, p2

    goto :goto_4

    :cond_9
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v2, 0x7f1301cd

    invoke-virtual {v11, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aget-object v3, v3, v15

    filled-new-array {v11, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v11, 0x2

    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_5
    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getLastModified()J

    move-result-wide v1

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f130497

    invoke-virtual {v10, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    iget-object v2, v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->deleteBtn:Lcom/google/android/material/button/MaterialButton;

    iget-object v3, v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->setBtn:Lcom/google/android/material/button/MaterialButton;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->checkboxIv:Landroid/widget/ImageView;

    const/16 v9, 0x8

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f080106

    goto :goto_6

    :cond_a
    const v1, 0x7f080107

    :goto_6
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;

    move/from16 v2, p2

    const/4 v10, 0x0

    invoke-direct {v1, v0, v6, v2, v10}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;II)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v6, v2, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v6, v10}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v6, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v6, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;I)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    return-void
.end method

.method public final onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 2

    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 p2, 0x0

    const v0, 0x7f0e0114

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, v1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperDownloadItemBinding;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p0
.end method

.method public final toggleSelection(Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;)V
    .locals 2

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onSelectionChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
