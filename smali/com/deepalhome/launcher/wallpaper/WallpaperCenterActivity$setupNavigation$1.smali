.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
