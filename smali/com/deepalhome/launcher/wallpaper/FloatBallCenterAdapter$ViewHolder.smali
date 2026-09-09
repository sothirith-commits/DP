.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final cardView:Landroidx/cardview/widget/CardView;

.field public final gifBadge:Landroid/widget/TextView;

.field public final iconIv:Landroid/widget/ImageView;

.field public retryCount:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b00f2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0b02e6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    const p1, 0x7f0b0256

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->gifBadge:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final loadImage(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$1;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    return-void
.end method
