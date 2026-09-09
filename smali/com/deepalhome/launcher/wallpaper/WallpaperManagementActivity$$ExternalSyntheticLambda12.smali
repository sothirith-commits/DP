.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;->f$1:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    sget p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    const-string p1, "$pending"

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;->f$1:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$onComplete"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
