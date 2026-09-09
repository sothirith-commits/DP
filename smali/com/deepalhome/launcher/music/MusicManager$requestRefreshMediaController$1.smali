.class public final Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/deepalhome/launcher/music/MusicManager;->lastRefreshAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    sget-boolean p0, Lcom/deepalhome/launcher/music/MusicManager;->refreshScheduled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/deepalhome/launcher/music/MusicManager;->refreshScheduled:Z

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->refreshRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sput-wide v0, Lcom/deepalhome/launcher/music/MusicManager;->lastRefreshAt:J

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;->refreshMediaController()V

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/deepalhome/launcher/music/MusicManager;->refreshScheduled:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    sput-boolean p0, Lcom/deepalhome/launcher/music/MusicManager;->refreshScheduled:Z

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->refreshRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sub-long/2addr v4, v2

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
