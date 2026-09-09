.class public final Lcom/deepalhome/launcher/util/RootAccessState$startAsyncCheckLocked$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/RootAccessState;->probeRootAccess(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "RootAccessState"

    const-string v1, "Startup root check failed"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onFail(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "RootAccessState"

    const-string v0, "Startup root check failed"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/RootAccessState;->access$finishAsyncCheck(Lcom/deepalhome/launcher/util/RootAccessState;Z)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/RootAccessState;->access$finishAsyncCheck(Lcom/deepalhome/launcher/util/RootAccessState;Z)V

    return-void
.end method
