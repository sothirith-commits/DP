.class public final Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarReadyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/openos/virtualcar/VirtualServiceReadyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serviceReadyFailed()V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final serviceReadySuccess()V
    .locals 3

    sget-boolean p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->registerVirtualCarCallbacks()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->refreshVirtualCarSnapshot(Z)V

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->initialDoorSnapshotRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleFastStatusPoll()V

    return-void
.end method
