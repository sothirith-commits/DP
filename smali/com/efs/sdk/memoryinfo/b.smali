.class final Lcom/efs/sdk/memoryinfo/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/efs/sdk/base/EfsReporter;

.field b:Z

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/b;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/efs/sdk/memoryinfo/b;->a:Lcom/efs/sdk/base/EfsReporter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/efs/sdk/memoryinfo/b;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/efs/sdk/memoryinfo/b;Lcom/efs/sdk/memoryinfo/e;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/efs/sdk/memoryinfo/c;

    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/efs/sdk/memoryinfo/c;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;

    const-string v1, "memperf"

    invoke-direct {p0, v1}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;-><init>(Ljava/lang/String;)V

    const-string v1, "w_pgid"

    invoke-virtual {p0, v1, p2}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "crver"

    const-string v1, "0.0.3.umeng"

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "k_st"

    iget-object v1, v0, Lcom/efs/sdk/memoryinfo/c;->bg:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "w_url"

    iget-object v1, v0, Lcom/efs/sdk/memoryinfo/c;->activity:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "wl_tpss"

    iget-wide v1, v0, Lcom/efs/sdk/memoryinfo/c;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "wl_jpss"

    iget-wide v1, v0, Lcom/efs/sdk/memoryinfo/c;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "wl_npss"

    iget-wide v1, v0, Lcom/efs/sdk/memoryinfo/c;->p:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "wl_heap"

    iget-wide v1, v0, Lcom/efs/sdk/memoryinfo/c;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "wf_heap_used_rate"

    iget v1, v0, Lcom/efs/sdk/memoryinfo/c;->r:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "wl_graphics"

    iget-wide v1, v0, Lcom/efs/sdk/memoryinfo/c;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "wl_vmsize"

    iget-wide v0, v0, Lcom/efs/sdk/memoryinfo/c;->t:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-class p2, Lcom/efs/sdk/memoryinfo/e;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p1, Lcom/efs/sdk/memoryinfo/e;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/efs/sdk/memoryinfo/e;->a(Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/efs/sdk/memoryinfo/e;->B:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
