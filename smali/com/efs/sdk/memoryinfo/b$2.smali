.class final Lcom/efs/sdk/memoryinfo/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/memoryinfo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/efs/sdk/memoryinfo/b;

.field final synthetic f:Landroid/os/Handler;

.field final synthetic i:J

.field final synthetic j:I

.field final synthetic k:Lcom/efs/sdk/memoryinfo/e;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:I


# direct methods
.method public constructor <init>(Lcom/efs/sdk/memoryinfo/b;JILandroid/os/Handler;Lcom/efs/sdk/memoryinfo/e;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/b$2;->c:Lcom/efs/sdk/memoryinfo/b;

    iput-wide p2, p0, Lcom/efs/sdk/memoryinfo/b$2;->i:J

    iput p4, p0, Lcom/efs/sdk/memoryinfo/b$2;->j:I

    iput-object p5, p0, Lcom/efs/sdk/memoryinfo/b$2;->f:Landroid/os/Handler;

    iput-object p6, p0, Lcom/efs/sdk/memoryinfo/b$2;->k:Lcom/efs/sdk/memoryinfo/e;

    iput-object p7, p0, Lcom/efs/sdk/memoryinfo/b$2;->l:Ljava/lang/String;

    iput p8, p0, Lcom/efs/sdk/memoryinfo/b$2;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/efs/sdk/memoryinfo/b$2;->i:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/efs/sdk/memoryinfo/b$2;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/b$2;->f:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/b$2;->c:Lcom/efs/sdk/memoryinfo/b;

    iget-object v1, p0, Lcom/efs/sdk/memoryinfo/b$2;->k:Lcom/efs/sdk/memoryinfo/e;

    iget-object v2, p0, Lcom/efs/sdk/memoryinfo/b$2;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/efs/sdk/memoryinfo/b;->a(Lcom/efs/sdk/memoryinfo/b;Lcom/efs/sdk/memoryinfo/e;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "collect "

    invoke-static {v1, v0}, Lcom/efs/sdk/memoryinfo/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/b$2;->f:Landroid/os/Handler;

    iget v1, p0, Lcom/efs/sdk/memoryinfo/b$2;->m:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
