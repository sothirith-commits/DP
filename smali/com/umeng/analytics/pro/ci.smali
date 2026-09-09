.class public final Lcom/umeng/analytics/pro/ci;
.super Lcom/umeng/analytics/pro/cp;
.source "SourceFile"


# static fields
.field public static final h:Lcom/umeng/analytics/pro/cu;


# instance fields
.field public e:I

.field public f:Z

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/umeng/analytics/pro/cu;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cu;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/ci;->h:Lcom/umeng/analytics/pro/cu;

    return-void
.end method


# virtual methods
.method public final A()Ljava/nio/ByteBuffer;
    .locals 3

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->d(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/dd;->a(I)V

    return-object v1

    :cond_0
    new-array v1, v0, [B

    invoke-virtual {p0, v1, v0}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(B)V
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/pro/ci;->i:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/ci;->k:[B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v3, 0x2

    aput-byte v0, v1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, v1, v0

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    const/4 p1, 0x4

    invoke-virtual {p0, v2, v1, p1}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void
.end method

.method public final a(J)V
    .locals 7

    const/16 v0, 0x38

    shr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/ci;->l:[B

    const/4 v4, 0x0

    aput-byte v0, v1, v4

    const/16 v0, 0x30

    shr-long v5, p1, v0

    and-long/2addr v5, v2

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x1

    aput-byte v0, v1, v5

    const/16 v0, 0x28

    shr-long v5, p1, v0

    and-long/2addr v5, v2

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x2

    aput-byte v0, v1, v5

    const/16 v0, 0x20

    shr-long v5, p1, v0

    and-long/2addr v5, v2

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x3

    aput-byte v0, v1, v5

    const/16 v0, 0x18

    shr-long v5, p1, v0

    and-long/2addr v5, v2

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x4

    aput-byte v0, v1, v5

    const/16 v0, 0x10

    shr-long v5, p1, v0

    and-long/2addr v5, v2

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x5

    aput-byte v0, v1, v5

    const/16 v0, 0x8

    shr-long v5, p1, v0

    and-long/2addr v5, v2

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v1, p2

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v4, v1, v0}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void
.end method

.method public final a(Lcom/umeng/analytics/pro/ck;)V
    .locals 3

    iget-byte v0, p1, Lcom/umeng/analytics/pro/ck;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->a(B)V

    iget-short p1, p1, Lcom/umeng/analytics/pro/ck;->c:S

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/ci;->j:[B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    const/4 p1, 0x2

    invoke-virtual {p0, v2, v1, p1}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void
.end method

.method public final a(Lcom/umeng/analytics/pro/cl;)V
    .locals 1

    iget-byte v0, p1, Lcom/umeng/analytics/pro/cl;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->a(B)V

    iget p1, p1, Lcom/umeng/analytics/pro/cl;->b:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ci;->a(I)V

    return-void
.end method

.method public final a(Lcom/umeng/analytics/pro/cm;)V
    .locals 1

    iget-byte v0, p1, Lcom/umeng/analytics/pro/cm;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->a(B)V

    iget-byte v0, p1, Lcom/umeng/analytics/pro/cm;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->a(B)V

    iget p1, p1, Lcom/umeng/analytics/pro/cm;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ci;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->a(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lcom/umeng/analytics/pro/bw;

    const-string p1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->a(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, v2

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->a(B)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    if-ltz p1, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/pro/ci;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/umeng/analytics/pro/ci;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/umeng/analytics/pro/ci;->e:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/umeng/analytics/pro/cq;

    const-string v0, "Message length exceeded: "

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/umeng/analytics/pro/cq;

    const-string v0, "Negative length: "

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()Lcom/umeng/analytics/pro/cu;
    .locals 0

    sget-object p0, Lcom/umeng/analytics/pro/ci;->h:Lcom/umeng/analytics/pro/cu;

    return-object p0
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()Lcom/umeng/analytics/pro/ck;
    .locals 3

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->u()B

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->v()S

    move-result p0

    :goto_0
    new-instance v1, Lcom/umeng/analytics/pro/ck;

    const-string v2, ""

    invoke-direct {v1, v2, v0, p0}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    return-object v1
.end method

.method public final n()Lcom/umeng/analytics/pro/cm;
    .locals 3

    new-instance v0, Lcom/umeng/analytics/pro/cm;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->u()B

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->w()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/umeng/analytics/pro/cm;-><init>(BBI)V

    return-object v0
.end method

.method public final p()Lcom/umeng/analytics/pro/cl;
    .locals 2

    new-instance v0, Lcom/umeng/analytics/pro/cl;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->w()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/umeng/analytics/pro/cl;-><init>(BI)V

    return-object v0
.end method

.method public final r()Lcom/umeng/analytics/pro/ct;
    .locals 2

    new-instance v0, Lcom/umeng/analytics/pro/ct;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->w()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/umeng/analytics/pro/ct;-><init>(BI)V

    return-object v0
.end method

.method public final t()Z
    .locals 1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->u()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u()B
    .locals 3

    iget-object v0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object p0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v1

    aget-byte p0, p0, v1

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/dd;->a(I)V

    return p0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ci;->m:[B

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/ci;->d(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v0, v2}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    const/4 p0, 0x0

    aget-byte p0, v0, p0

    return p0
.end method

.method public final v()S
    .locals 3

    iget-object v0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object p0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/dd;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ci;->n:[B

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/ci;->d(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v0, v2}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    const/4 v1, 0x0

    move-object p0, v0

    :goto_0
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public final w()I
    .locals 3

    iget-object v0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object p0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/dd;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ci;->o:[B

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/ci;->d(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v0, v2}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    const/4 v1, 0x0

    move-object p0, v0

    :goto_0
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public final x()J
    .locals 7

    iget-object v0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object p0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/dd;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ci;->p:[B

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/ci;->d(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v0, v2}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    const/4 v1, 0x0

    move-object p0, v0

    :goto_0
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v1, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v1, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x10

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v1, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    add-int/lit8 v1, v1, 0x7

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final y()D
    .locals 2

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final z()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ci;->w()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v2

    const-string v3, "JVM DOES NOT SUPPORT UTF-8"

    const-string v4, "UTF-8"

    if-lt v2, v0, :cond_0

    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v5

    invoke-direct {p0, v2, v5, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/pro/dd;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/umeng/analytics/pro/bw;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ci;->d(I)V

    new-array p0, v0, [B

    invoke-virtual {v1, p0, v0}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance p0, Lcom/umeng/analytics/pro/bw;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
