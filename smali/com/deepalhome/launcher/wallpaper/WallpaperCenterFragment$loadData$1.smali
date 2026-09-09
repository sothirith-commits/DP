.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $token:J

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$r8$classId:I

    iput-wide p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    return-void
.end method

.method private final onError$com$deepalhome$launcher$music$broadcast$LyricBroadcastDispatcher$requestPayload$1()V
    .locals 0

    return-void
.end method

.method private final onFavLoaded$com$deepalhome$launcher$music$broadcast$LyricBroadcastDispatcher$requestPayload$1(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCoverLoaded(Ljava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "cover"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string p0, "cover"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onError()V
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda5;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-wide v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    invoke-direct {v1, v3, v4, v2}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda5;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 6

    const-string v0, "error"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    iget-wide v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->requestToken:J

    iget-wide v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const p2, 0x7f130434

    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "getString(...)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-array v1, p0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p2, :cond_7

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p2, :cond_6

    iget-object v3, p2, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v4, v5, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v3, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(Z)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance p0, Lcom/chad/library/adapter4/loadState/LoadState$Error;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/loadState/LoadState$Error;-><init>(Ljava/lang/Throwable;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->helper:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast p1, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    :goto_0
    return-void

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onFavLoaded(Z)V
    .locals 1

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance p1, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    iget-wide v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/Music;

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;-><init>(JLcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-wide v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    invoke-direct {v1, v3, v4, p1, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;-><init>(JLcom/deepalhome/launcher/music/ttml/LyricPayload;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRemote(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    iget-wide v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->requestToken:J

    iget-wide v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->$token:J

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->access$applyPage(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    return-void
.end method
