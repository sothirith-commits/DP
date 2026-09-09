.class public final Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# instance fields
.field public final synthetic $onComplete:Lkotlin/jvm/functions/Function1;

.field public final synthetic $timeoutMs:J


# direct methods
.method public constructor <init>(JLkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-wide p1, p0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;->$timeoutMs:J

    iput-object p3, p0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;->$timeoutMs:J

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/RootAccessState;->probeCurrentRootAccess(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onFail(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "RootAccessState"

    const-string v1, "Live root check failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
