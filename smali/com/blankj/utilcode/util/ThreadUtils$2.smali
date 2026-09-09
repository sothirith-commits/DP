.class public final Lcom/blankj/utilcode/util/ThreadUtils$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic val$pool:Ljava/util/concurrent/ExecutorService;

.field public final synthetic val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$2;->val$pool:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ThreadUtils$2;->val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$2;->val$pool:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$2;->val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
