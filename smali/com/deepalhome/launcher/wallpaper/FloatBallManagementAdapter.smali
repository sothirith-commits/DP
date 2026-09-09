.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public isMultiSelectMode:Z

.field public final latestItemKeys:Ljava/util/LinkedHashSet;

.field public final onApplyClick:Lkotlin/jvm/functions/Function1;

.field public final onDeleteClick:Lkotlin/jvm/functions/Function1;

.field public final onPreviewClick:Lkotlin/jvm/functions/Function1;

.field public final onSelectionChanged:Lkotlin/jvm/functions/Function1;

.field public final selectedItems:Ljava/util/LinkedHashSet;

.field public final timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$1;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$2;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$3;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$4;)V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$DiffCallback;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$DiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->onApplyClick:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->onDeleteClick:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->onPreviewClick:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->onSelectionChanged:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p2

    const p3, 0x7f130498

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {p1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->latestItemKeys:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final getSelectedItems()Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const-string v1, "getCurrentList(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

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

    check-cast v3, Lcom/deepalhome/launcher/floating/CachedIcon;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

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
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const-string v1, "getCurrentList(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-lez v1, :cond_4

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20

    move/from16 v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v5, p1

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;

    const-string v6, "holder"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v6, p0

    iget-object v6, v6, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v6, v6, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "getItem(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/floating/CachedIcon;

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v8

    if-eqz v8, :cond_0

    const v9, 0x7f060026

    goto :goto_0

    :cond_0
    const v9, 0x7f060023

    :goto_0
    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    if-eqz v8, :cond_1

    const v10, 0x7f06038c

    goto :goto_1

    :cond_1
    const v10, 0x7f06038b

    :goto_1
    invoke-virtual {v7, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    if-eqz v8, :cond_2

    const v8, 0x7f06038a

    goto :goto_2

    :cond_2
    const v8, 0x7f060389

    :goto_2
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    iget-object v11, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v12, v11, Lcom/google/android/material/card/MaterialCardView;

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    goto :goto_3

    :cond_3
    move-object v11, v13

    :goto_3
    if-eqz v11, :cond_4

    invoke-virtual {v11, v9}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :cond_4
    iget-object v9, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->infoTv:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->isGif()Z

    move-result v8

    const/16 v11, 0x8

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_4

    :cond_5
    move v8, v11

    :goto_4
    iget-object v12, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->gifBadge:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v3

    goto :goto_5

    :cond_6
    move v8, v11

    :goto_5
    iget-object v12, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->builtinBadge:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v8

    iget-object v12, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    if-eqz v8, :cond_7

    const v8, 0x7f1301fa

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_7
    sget-object v8, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;

    sget-object v14, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->get(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_9

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_8
    move-object v14, v13

    :goto_6
    if-nez v14, :cond_9

    const-string v14, ""

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->withoutStoragePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getSize()J

    move-result-wide v8

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v14

    const v15, 0x7f1301ce

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "getString(...)"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v16, 0x400

    cmp-long v16, v8, v16

    if-gez v16, :cond_a

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8, v15}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f1301cb

    invoke-virtual {v14, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v3, 0x7f030000

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v15, "getStringArray(...)"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    long-to-double v8, v8

    const-wide/high16 v17, 0x4090000000000000L    # 1024.0

    div-double v8, v8, v17

    const/4 v15, 0x0

    :goto_7
    cmpl-double v19, v8, v17

    if-ltz v19, :cond_b

    array-length v11, v3

    sub-int/2addr v11, v4

    if-ge v15, v11, :cond_b

    const/16 v11, 0x400

    move-object/from16 p1, v3

    int-to-double v2, v11

    div-double/2addr v8, v2

    add-int/2addr v15, v4

    move-object/from16 v3, p1

    const/16 v11, 0x8

    goto :goto_7

    :cond_b
    move-object/from16 p1, v3

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x7f1301cd

    invoke-virtual {v14, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aget-object v8, p1, v15

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x2

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_8
    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getLastModified()J

    move-result-wide v1

    iget-object v3, v12, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f130497

    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v1, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getResId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_a

    :cond_c
    const v2, 0x7f08013b

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :cond_d
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v3

    const-class v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    const v3, 0x7f080231

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    :goto_b
    iget-boolean v2, v12, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    iget-object v3, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->applyBtn:Landroid/view/View;

    iget-object v7, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->checkboxIv:Landroid/widget/ImageView;

    iget-object v8, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->deleteBtn:Landroid/view/View;

    if-eqz v2, :cond_10

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v12, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x7f080106

    goto :goto_c

    :cond_f
    const v2, 0x7f080107

    :goto_c
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v2, 0x8

    :goto_d
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;

    invoke-direct {v2, v0, v6, v12}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;-><init>(ILcom/deepalhome/launcher/floating/CachedIcon;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;)V

    new-instance v0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f

    :cond_10
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v6, v12}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;-><init>(ILcom/deepalhome/launcher/floating/CachedIcon;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e

    :cond_11
    invoke-virtual {v8, v4}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, v4, v6, v12}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;-><init>(ILcom/deepalhome/launcher/floating/CachedIcon;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_e
    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v6, v12}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;-><init>(ILcom/deepalhome/launcher/floating/CachedIcon;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6, v12}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$$ExternalSyntheticLambda2;-><init>(ILcom/deepalhome/launcher/floating/CachedIcon;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_f
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e005b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;Landroid/view/View;)V

    return-object p2
.end method
