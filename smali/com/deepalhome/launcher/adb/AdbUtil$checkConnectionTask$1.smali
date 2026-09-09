.class public final Lcom/deepalhome/launcher/adb/AdbUtil$checkConnectionTask$1;
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
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

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
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-boolean p1, Lcom/deepalhome/launcher/adb/AdbUtil;->isConnected:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sput-boolean p0, Lcom/deepalhome/launcher/adb/AdbUtil;->isConnected:Z

    new-instance p1, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
