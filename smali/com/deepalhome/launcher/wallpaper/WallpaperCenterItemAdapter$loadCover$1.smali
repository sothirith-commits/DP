.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# instance fields
.field public final synthetic $bindKey:Ljava/lang/String;

.field public final synthetic $imageView:Landroid/widget/ImageView;

.field public final synthetic $item:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->$bindKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->$item:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;)Z
    .locals 6

    const-string p1, "target"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->$item:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter$loadCover$1;->$bindKey:Ljava/lang/String;

    const/4 v5, 0x5

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p0, "model"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "dataSource"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
