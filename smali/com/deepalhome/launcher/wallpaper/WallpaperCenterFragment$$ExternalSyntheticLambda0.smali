.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    sget p1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-direct {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;-><init>()V

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    iget-object p2, p2, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p2

    new-instance p3, Lkotlin/Pair;

    const-string v0, "KEY_DATA"

    invoke-direct {p3, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p3}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lokhttp3/logging/Utf8Kt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "WallpaperItemDialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onRefresh(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V
    .locals 1

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->loadData(Z)V

    return-void
.end method
