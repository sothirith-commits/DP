.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

.field final synthetic $installFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1;->$installFile:Ljava/io/File;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1;->$callback:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1$1;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1;->$installFile:Ljava/io/File;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1;->$callback:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1$1;-><init>(Ljava/io/File;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;)V

    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
