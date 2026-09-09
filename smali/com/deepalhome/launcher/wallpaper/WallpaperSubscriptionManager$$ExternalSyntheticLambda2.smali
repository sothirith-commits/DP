.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda2;->f$0:J

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda2;->f$0:J

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :cond_0
    return-void
.end method
