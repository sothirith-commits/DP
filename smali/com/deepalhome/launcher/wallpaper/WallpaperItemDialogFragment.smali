.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;
.super Lcom/deepalhome/launcher/base/BaseDialogFragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

.field public downloadListener:Landroidx/emoji2/text/MetadataRepo;

.field public mediaPlayer:Landroid/media/MediaPlayer;

.field public previewRetryCount:I

.field public resetDelayMs:J

.field public timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0115

    invoke-direct {p0, v0}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getTheme()I
    .locals 0

    const p0, 0x7f14023b

    return p0
.end method

.method public final humanReadableByteCountBin$1(J)Ljava/lang/String;
    .locals 10

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p0, :cond_9

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1301ce

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v4, 0x400

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1301cb

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v4, Ljava/text/StringCharacterIterator;

    const-string v5, "KMGTPE"

    invoke-direct {v4, v5}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x28

    move-wide v6, v0

    :goto_1
    if-ltz v5, :cond_2

    const-wide v8, 0xfffccccccccccccL

    shr-long/2addr v8, v5

    cmp-long v8, v0, v8

    if-lez v8, :cond_2

    const/16 v8, 0xa

    shr-long/2addr v6, v8

    invoke-interface {v4}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v5, v5, -0xa

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr v6, p1

    invoke-interface {v4}, Ljava/text/CharacterIterator;->current()C

    move-result p1

    const/16 p2, 0x4b

    if-ne p1, p2, :cond_3

    const p1, 0x7f1301d1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/16 p2, 0x4d

    if-ne p1, p2, :cond_4

    const p1, 0x7f1301d2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/16 p2, 0x47

    if-ne p1, p2, :cond_5

    const p1, 0x7f1301d0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/16 p2, 0x54

    if-ne p1, p2, :cond_6

    const p1, 0x7f1301d4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/16 p2, 0x50

    if-ne p1, p2, :cond_7

    const p1, 0x7f1301d3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const/16 p2, 0x45

    if-ne p1, p2, :cond_8

    const p1, 0x7f1301cf

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const p2, 0x7f1301cd

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    long-to-double v0, v6

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final loadPreview(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Z)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x2

    const-string v5, "binding"

    if-ne v0, v4, :cond_9

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_3
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v3, :cond_6

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2, v2, v0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->tryPlayVideo(Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    :goto_1
    return-void

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getType()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v6

    iget-object v6, v6, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    invoke-virtual {v6, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    sget-object v6, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->thumbnail()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    goto :goto_3

    :cond_e
    move-object v3, v1

    :goto_3
    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v6, :cond_12

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    iget-object v4, v4, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->preview()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const-string v2, "apply(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_f

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache()Lcom/bumptech/glide/request/BaseRequestOptions;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$3;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    :cond_f
    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;ZLclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    if-eqz v3, :cond_10

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    :cond_10
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p0, :cond_11

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    return-void

    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lcom/deepalhome/launcher/base/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->timeoutRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->releaseMediaPlayer()V

    sget-object v0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->downloadListener:Landroidx/emoji2/text/MetadataRepo;

    if-ne v0, v2, :cond_2

    sput-object v1, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p2, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v0, 0x7f0e0115

    invoke-virtual {p2, p1, v0}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const-string p2, "bind(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c000a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->resetDelayMs:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "KEY_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    if-eqz v0, :cond_1

    check-cast p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->loadPreview(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Z)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const-string v2, "binding"

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getType()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x8

    if-ne v3, v4, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->videoFallbackHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v6, :cond_26

    if-nez v1, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v7, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v0

    :goto_4
    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->authorRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v6, :cond_25

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_5

    :cond_6
    move v1, v5

    :goto_5
    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->authorTv:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_24

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->authorTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_9

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->avatarIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v4, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v4, v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    iget-object v4, v4, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->thumbnail()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->avatarIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    goto :goto_6

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_9
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_23

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->avatarIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_22

    new-instance v4, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v6, 0x7

    invoke-direct {v4, v6}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->cardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_a
    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_b

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;)V

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_7

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_21

    new-instance v4, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v6, 0x18

    invoke-direct {v4, v6, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_d

    const v6, 0x7f060026

    goto :goto_8

    :cond_d
    const v6, 0x7f060023

    :goto_8
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_e

    const v7, 0x7f06038c

    goto :goto_9

    :cond_e
    const v7, 0x7f06038b

    :goto_9
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v1, :cond_f

    const v1, 0x7f06038a

    goto :goto_a

    :cond_f
    const v1, 0x7f060389

    :goto_a
    invoke-virtual {v7, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v7, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v7, :cond_20

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->cardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v7, v4}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v4, :cond_1f

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->wallpaperNameTv:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v4, :cond_1e

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->authorTv:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v4, :cond_1d

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->wallpaperResolutionTv:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v4, :cond_1c

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->videoFallbackHint:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->wallpaperNameTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_10

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "fileName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    move-object v1, p2

    :goto_b
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_11

    sget-object v8, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v8

    :cond_11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v7, v4}, Lcom/deepalhome/launcher/util/DownLoadUtil;->createTask(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v4

    goto :goto_c

    :cond_12
    move-object v4, p2

    :goto_c
    invoke-virtual {p0, p1, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->resetDownloadBtn(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Lcom/liulishuo/okdownload/DownloadTask;)V

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-ne v6, v3, :cond_13

    sget-object v6, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->displayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v7}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->save(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->showSetWallpaper(Ljava/io/File;)V

    :cond_13
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->resolutionText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_d

    :cond_14
    iget-object v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v5, :cond_16

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->wallpaperResolutionTv:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_15

    iget-object p2, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->wallpaperResolutionTv:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_17
    :goto_d
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_1a

    iget-object p2, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->wallpaperResolutionTv:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    if-eqz v4, :cond_18

    iget-object p2, v4, Lcom/liulishuo/okdownload/DownloadTask;->tag:Ljava/lang/Object;

    if-nez p2, :cond_18

    new-instance p2, Lcom/deepalhome/launcher/http/TaskInfo;

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getFileSize()J

    move-result-wide v5

    invoke-direct {p2, v3, v5, v6}, Lcom/deepalhome/launcher/http/TaskInfo;-><init>(IJ)V

    iput-object p2, v4, Lcom/liulishuo/okdownload/DownloadTask;->tag:Ljava/lang/Object;

    :cond_18
    if-eqz v4, :cond_19

    new-instance p2, Landroidx/emoji2/text/MetadataRepo;

    invoke-direct {p2, p0, v4, v1, p1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Lcom/liulishuo/okdownload/DownloadTask;Ljava/io/File;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->downloadListener:Landroidx/emoji2/text/MetadataRepo;

    sget-object p0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p2, Lcom/deepalhome/launcher/util/DownLoadUtil;->downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

    :cond_19
    return-void

    :cond_1a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_21
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_22
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_25
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_27
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public final releaseMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public final resetDownloadBtn(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 9

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->setWallpaperBtn:Lcom/google/android/material/button/MaterialButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getFileSize()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const-string v5, ""

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getFileSize()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->humanReadableByteCountBin$1(J)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_8

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    if-eqz v0, :cond_3

    const v0, 0x7f1301a5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v0, 0x7f13019d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0, p2}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_d

    const p2, 0x7f1301a4

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final showSetWallpaper(Ljava/io/File;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->setWallpaperBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p1, p0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->setWallpaperBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, v0

    aget-object p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/blankj/utilcode/util/ClickUtils$1;

    invoke-direct {p1, v2}, Lcom/blankj/utilcode/util/ClickUtils$1;-><init>(Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final tryPlayVideo(Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    const-string v10, "binding"

    if-lt v6, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->releaseMediaPlayer()V

    iget-object v0, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v7, :cond_4

    invoke-static/range {p3 .. p3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->preview()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    goto :goto_0

    :cond_3
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_6
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_7
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_8
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    if-nez v6, :cond_9

    const-wide/16 v0, 0x2710

    :goto_1
    move-wide v12, v0

    goto :goto_2

    :cond_9
    const-wide/16 v0, 0xbb8

    goto :goto_1

    :goto_2
    new-instance v14, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    iput-object v14, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->timeoutRunnable:Ljava/lang/Runnable;

    iget-object v15, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v15, :cond_11

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v14

    move-object/from16 v4, p1

    move-object v11, v5

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/lang/String;Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    iget-object v0, v15, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v11}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_3

    :cond_a
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_b
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_c
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_d
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_e
    :goto_3
    iget-object v0, v8, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v14, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_f
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_10
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_11
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9
.end method
