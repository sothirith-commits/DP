.class public abstract Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onCancel: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ThreadUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onFail(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "ThreadUtils"

    const-string v0, "onFail: "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
