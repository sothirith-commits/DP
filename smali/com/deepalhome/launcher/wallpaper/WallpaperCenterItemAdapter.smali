.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# static fields
.field public static final videoFrameCache:Landroid/util/LruCache;


# instance fields
.field public final glideOptions:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$Companion;-><init>(I)V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->videoFrameCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(I)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheOptions;->thumbnail()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f080231

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    const-string v1, "placeholder(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->glideOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method


# virtual methods
.method public final loadFallbackCover(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Landroid/widget/ImageView;)V
    .locals 4

    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f080231

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getType()I

    move-result p1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->glideOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->videoFrameCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, -0x2

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v0, p2, v2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    const-string p2, "holder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->binding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;

    iget-object p2, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->coverIv:Landroid/widget/ImageView;

    const-string v0, "coverIv"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p0, 0x7f080231

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->glideOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;

    invoke-direct {v2, p2, v3, p0, p3}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p3, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->loadFallbackCover(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Landroid/widget/ImageView;)V

    :goto_2
    iget-object p0, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->titleTv:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->displayName()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->resolutionText()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const/4 p0, 0x0

    const/16 p2, 0x8

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->resolutionTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->resolutionTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v0, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->resolutionTv:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->videoIv:Landroid/widget/ImageView;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getType()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    goto :goto_6

    :cond_8
    move p0, p2

    :goto_6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

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

    sget p2, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 p2, 0x0

    const v0, 0x7f0e0111

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, v1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p0
.end method
