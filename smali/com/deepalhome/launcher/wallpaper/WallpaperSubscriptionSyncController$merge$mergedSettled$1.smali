.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$merge$mergedSettled$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $other:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

.field final synthetic $this_merge:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$merge$mergedSettled$1;->$this_merge:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$merge$mergedSettled$1;->$other:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$merge$mergedSettled$1;->$this_merge:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->onSettled:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$merge$mergedSettled$1;->$other:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->onSettled:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
