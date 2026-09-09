.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$periodicRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "periodic"

    const/4 v2, 0x0

    const/16 v5, 0xe

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->requestSync$default(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Ljava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;I)V

    const-wide/32 v0, 0x1499700

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
