.class public final Lcom/umeng/commonsdk/UMConfigureImpl$1;
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
    .locals 3

    :try_start_0
    sget p0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget p0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    const/16 v1, 0xa

    if-lt p0, v1, :cond_3

    :cond_0
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    if-nez p0, :cond_2

    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    const-class p0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v1, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-boolean v0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->transmissionSendFlag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1

    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/internal/c$5;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/internal/c$5;->onMessageSend()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    monitor-exit p0

    throw v0

    :catch_0
    :cond_1
    monitor-exit p0

    :cond_2
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p0, 0x0

    sput-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_3
    sget p0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    add-int/2addr p0, v0

    sput p0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void
.end method
