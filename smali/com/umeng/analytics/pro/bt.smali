.class public final Lcom/umeng/analytics/pro/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/umeng/analytics/pro/cp;

.field public final b:Lcom/umeng/analytics/pro/dc;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/umeng/analytics/pro/cj$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cj$a;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/umeng/analytics/pro/dc;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/dc;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/bt;->b:Lcom/umeng/analytics/pro/dc;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/cj$a;->a(Lcom/umeng/analytics/pro/dd;)Lcom/umeng/analytics/pro/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/bt;->a:Lcom/umeng/analytics/pro/cp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/bq;[B)V
    .locals 3

    iget-object v0, p0, Lcom/umeng/analytics/pro/bt;->a:Lcom/umeng/analytics/pro/cp;

    iget-object p0, p0, Lcom/umeng/analytics/pro/bt;->b:Lcom/umeng/analytics/pro/dc;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, p2

    iput-object p2, p0, Lcom/umeng/analytics/pro/dc;->a:[B

    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/analytics/pro/dc;->b:I

    iput v2, p0, Lcom/umeng/analytics/pro/dc;->c:I

    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/bq;->read(Lcom/umeng/analytics/pro/cp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/umeng/analytics/pro/dc;->a:[B

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cp;->B()V

    return-void

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lcom/umeng/analytics/pro/dc;->a:[B

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cp;->B()V

    throw p1
.end method
