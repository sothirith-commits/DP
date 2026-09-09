.class final Lcom/efs/sdk/memoryinfo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final activity:Ljava/lang/String;

.field final bg:Ljava/lang/String;

.field final n:J

.field final o:J

.field final p:J

.field final q:J

.field final r:F

.field final s:J

.field final t:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    :cond_1
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object p1

    invoke-interface {p1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->isForeground()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "fg"

    goto :goto_0

    :cond_2
    const-string p1, "bg"

    :goto_0
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/c;->bg:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/efs/sdk/memoryinfo/c;->n:J

    iget p1, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    int-to-long v1, p1

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/efs/sdk/memoryinfo/c;->o:J

    iget p1, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    int-to-long v1, p1

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/efs/sdk/memoryinfo/c;->p:J

    invoke-static {v0}, Lcom/efs/sdk/memoryinfo/f;->a(Landroid/os/Debug$MemoryInfo;)J

    move-result-wide v0

    mul-long/2addr v0, v3

    iput-wide v0, p0, Lcom/efs/sdk/memoryinfo/c;->s:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/efs/sdk/memoryinfo/c;->q:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    long-to-float p1, v0

    mul-float/2addr p1, v2

    long-to-float v0, v5

    div-float/2addr p1, v0

    iput p1, p0, Lcom/efs/sdk/memoryinfo/c;->r:F

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/efs/sdk/memoryinfo/c;->r:F

    :goto_1
    invoke-static {}, Lcom/efs/sdk/memoryinfo/f;->a()J

    move-result-wide v0

    mul-long/2addr v0, v3

    iput-wide v0, p0, Lcom/efs/sdk/memoryinfo/c;->t:J

    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object p1

    invoke-interface {p1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->getCurrentActivity()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/c;->activity:Ljava/lang/String;

    return-void
.end method
