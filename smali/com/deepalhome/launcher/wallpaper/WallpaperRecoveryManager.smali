.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;

.field public static final lastRefreshAt:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final mainHandler:Landroid/os/Handler;

.field public static final wallpaperViews:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->wallpaperViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->mainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->lastRefreshAt:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
