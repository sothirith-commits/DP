.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->setSelectedPosition(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->navRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "navAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
