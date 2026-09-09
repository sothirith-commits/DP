.class public final Lcom/umeng/analytics/pro/ci$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/ci$a;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/analytics/pro/ci$a;->b:Z

    iput v0, p0, Lcom/umeng/analytics/pro/ci$a;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/dd;)Lcom/umeng/analytics/pro/cp;
    .locals 5

    new-instance v0, Lcom/umeng/analytics/pro/ci;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/cp;-><init>(Lcom/umeng/analytics/pro/dd;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/umeng/analytics/pro/ci;->f:Z

    const/4 p1, 0x1

    new-array v1, p1, [B

    iput-object v1, v0, Lcom/umeng/analytics/pro/ci;->i:[B

    const/4 v1, 0x2

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/umeng/analytics/pro/ci;->j:[B

    const/4 v2, 0x4

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/umeng/analytics/pro/ci;->k:[B

    const/16 v3, 0x8

    new-array v4, v3, [B

    iput-object v4, v0, Lcom/umeng/analytics/pro/ci;->l:[B

    new-array v4, p1, [B

    iput-object v4, v0, Lcom/umeng/analytics/pro/ci;->m:[B

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/umeng/analytics/pro/ci;->n:[B

    new-array v1, v2, [B

    iput-object v1, v0, Lcom/umeng/analytics/pro/ci;->o:[B

    new-array v1, v3, [B

    iput-object v1, v0, Lcom/umeng/analytics/pro/ci;->p:[B

    iget p0, p0, Lcom/umeng/analytics/pro/ci$a;->c:I

    if-eqz p0, :cond_0

    iput p0, v0, Lcom/umeng/analytics/pro/ci;->e:I

    iput-boolean p1, v0, Lcom/umeng/analytics/pro/ci;->f:Z

    :cond_0
    return-object v0
.end method
