.class public final Landroidx/arch/core/executor/DefaultTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "SourceFile"


# instance fields
.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    new-instance p0, Landroidx/arch/core/executor/DefaultTaskExecutor$1;

    invoke-direct {p0}, Landroidx/arch/core/executor/DefaultTaskExecutor$1;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    return-void
.end method
