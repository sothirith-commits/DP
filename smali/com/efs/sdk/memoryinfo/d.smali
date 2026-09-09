.class final Lcom/efs/sdk/memoryinfo/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;


# instance fields
.field private A:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/efs/sdk/memoryinfo/b;

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->v:Z

    return-void
.end method


# virtual methods
.method public final getCurrentActivity()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/d;->x:Ljava/lang/ref/WeakReference;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isEnable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/d;->w:Lcom/efs/sdk/memoryinfo/b;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/efs/sdk/memoryinfo/b;->b:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final isForeground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/efs/sdk/memoryinfo/d;->y:Z

    return p0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/efs/sdk/memoryinfo/d;->x:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/efs/sdk/memoryinfo/d;->A:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/efs/sdk/memoryinfo/d;->A:Z

    return-void

    :cond_2
    iget p1, p0, Lcom/efs/sdk/memoryinfo/d;->z:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/efs/sdk/memoryinfo/d;->z:I

    if-ne p1, v0, :cond_3

    iput-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->y:Z

    :cond_3
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->A:Z

    return-void

    :cond_2
    iget p1, p0, Lcom/efs/sdk/memoryinfo/d;->z:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/efs/sdk/memoryinfo/d;->z:I

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/efs/sdk/memoryinfo/d;->y:Z

    :cond_3
    return-void
.end method

.method public final setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/efs/sdk/memoryinfo/d;->v:Z

    return-void
.end method

.method public final start(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->v:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/efs/sdk/base/integrationtesting/IntegrationTestingUtil;->isIntegrationTestingInPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->u:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/memoryinfo/d;->u:Z

    new-instance v0, Lcom/efs/sdk/memoryinfo/b;

    invoke-direct {v0, p1, p2}, Lcom/efs/sdk/memoryinfo/b;-><init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V

    iput-object v0, p0, Lcom/efs/sdk/memoryinfo/d;->w:Lcom/efs/sdk/memoryinfo/b;

    const-string p0, "apm_memperf_collect_interval"

    const-string p1, "apm_memperf_collect_max_period_sec"

    const-string p2, "apm_memperf_sampling_rate"

    filled-new-array {p2, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/efs/sdk/memoryinfo/b;->a:Lcom/efs/sdk/base/EfsReporter;

    new-instance p2, Lcom/efs/sdk/memoryinfo/b$1;

    invoke-direct {p2, v0}, Lcom/efs/sdk/memoryinfo/b$1;-><init>(Lcom/efs/sdk/memoryinfo/b;)V

    invoke-virtual {p1, p0, p2}, Lcom/efs/sdk/base/EfsReporter;->getAllSdkConfig([Ljava/lang/String;Lcom/efs/sdk/base/observer/IConfigCallback;)V

    return-void
.end method
