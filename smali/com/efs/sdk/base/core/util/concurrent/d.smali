.class public Lcom/efs/sdk/base/core/util/concurrent/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/core/util/concurrent/b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/efs/sdk/base/core/util/concurrent/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/efs/sdk/base/core/util/concurrent/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/core/util/concurrent/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/efs/sdk/base/core/util/concurrent/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->b:Lcom/efs/sdk/base/core/util/concurrent/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->b:Lcom/efs/sdk/base/core/util/concurrent/c;

    invoke-interface {v1}, Lcom/efs/sdk/base/core/util/concurrent/c;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/base/core/util/concurrent/b;

    iget-object v3, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->b:Lcom/efs/sdk/base/core/util/concurrent/c;

    invoke-interface {v2, v3, v0}, Lcom/efs/sdk/base/core/util/concurrent/b;->a(Lcom/efs/sdk/base/core/util/concurrent/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/base/core/util/concurrent/b;

    invoke-interface {v2, v0}, Lcom/efs/sdk/base/core/util/concurrent/b;->result(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    const-string v2, "efs.util.concurrent"

    invoke-static {v2, v1}, Lcom/efs/sdk/base/core/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/core/util/concurrent/b<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/concurrent/d;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/util/concurrent/d;->a()Ljava/lang/Object;

    return-void
.end method
