.class public Lcom/umeng/analytics/pro/cj;
.super Lcom/umeng/analytics/pro/cp;
.source "SourceFile"


# static fields
.field public static final d:Lcom/umeng/analytics/pro/cu;

.field public static final e:Lcom/umeng/analytics/pro/ck;

.field public static final f:[B


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B

.field public final m:Lcom/umeng/analytics/pro/bo;

.field public n:S

.field public p:Ljava/lang/Boolean;

.field public final q:J

.field public final r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/umeng/analytics/pro/cu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/cj;->d:Lcom/umeng/analytics/pro/cu;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/cj;->e:Lcom/umeng/analytics/pro/ck;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/umeng/analytics/pro/cj;->f:[B

    aput-byte v2, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v3, 0x5

    const/16 v4, 0x8

    aput-byte v3, v0, v4

    const/16 v3, 0xa

    aput-byte v1, v0, v3

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0xb

    aput-byte v4, v0, v1

    const/16 v2, 0xf

    const/16 v4, 0x9

    aput-byte v4, v0, v2

    const/16 v2, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    const/16 v1, 0xc

    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/db;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/cj;-><init>(Lcom/umeng/analytics/pro/dd;J)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/dd;J)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cp;-><init>(Lcom/umeng/analytics/pro/dd;)V

    new-instance p1, Lcom/umeng/analytics/pro/bo;

    invoke-direct {p1}, Lcom/umeng/analytics/pro/bo;-><init>()V

    const/4 v0, -0x1

    iput v0, p1, Lcom/umeng/analytics/pro/bo;->b:I

    const/16 v0, 0xf

    new-array v0, v0, [S

    iput-object v0, p1, Lcom/umeng/analytics/pro/bo;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/umeng/analytics/pro/cj;->m:Lcom/umeng/analytics/pro/bo;

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/umeng/analytics/pro/cj;->n:S

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/cj;->p:Ljava/lang/Boolean;

    const/4 p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/analytics/pro/cj;->a:[B

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/analytics/pro/cj;->b:[B

    const/4 p1, 0x1

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/umeng/analytics/pro/cj;->r:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/analytics/pro/cj;->c:[B

    iput-wide p2, p0, Lcom/umeng/analytics/pro/cj;->q:J

    return-void
.end method

.method public static d(B)B
    .locals 2

    const/16 v0, 0xf

    and-int/2addr p0, v0

    int-to-byte p0, p0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/umeng/analytics/pro/cq;

    const-string v1, "don\'t know what type: "

    invoke-static {v1, p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/16 p0, 0xd

    return p0

    :pswitch_2
    const/16 p0, 0xe

    return p0

    :pswitch_3
    return v0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/16 p0, 0xa

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->E()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->f(I)V

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v1, v0, [B

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v1, v0}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final B()V
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/umeng/analytics/pro/cj;->m:Lcom/umeng/analytics/pro/bo;

    iput v0, v1, Lcom/umeng/analytics/pro/bo;->b:I

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/umeng/analytics/pro/cj;->n:S

    return-void
.end method

.method public final E()I
    .locals 8

    iget-object v0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0x80

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v2

    move p0, v4

    move v5, p0

    :goto_0
    add-int v6, v2, v4

    aget-byte v6, v1, v6

    and-int/lit8 v7, v6, 0x7f

    shl-int/2addr v7, v5

    or-int/2addr p0, v7

    and-int/2addr v6, v3

    if-eq v6, v3, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/umeng/analytics/pro/dd;->a(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->u()B

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr v4, v2

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_2

    move p0, v4

    :goto_2
    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x7

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->m:Lcom/umeng/analytics/pro/bo;

    iget-short v1, p0, Lcom/umeng/analytics/pro/cj;->n:S

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/bo;->a(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/umeng/analytics/pro/cj;->n:S

    return-void
.end method

.method public final a(I)V
    .locals 1

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/cj;->b(I)V

    return-void
.end method

.method public final a(J)V
    .locals 8

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    iget-object v3, p0, Lcom/umeng/analytics/pro/cj;->b:[B

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v0, v3, v2}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void

    :cond_0
    add-int/lit8 v2, v1, 0x1

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    move v1, v2

    goto :goto_0
.end method

.method public final a(Lcom/umeng/analytics/pro/ck;)V
    .locals 3

    const/4 v0, 0x2

    iget-byte v1, p1, Lcom/umeng/analytics/pro/ck;->b:B

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/cj;->f:[B

    aget-byte v0, v0, v1

    iget-short v1, p0, Lcom/umeng/analytics/pro/cj;->n:S

    iget-short p1, p1, Lcom/umeng/analytics/pro/ck;->c:S

    if-le p1, v1, :cond_1

    sub-int v1, p1, v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(B)V

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(I)V

    :goto_0
    iput-short p1, p0, Lcom/umeng/analytics/pro/cj;->n:S

    :goto_1
    return-void
.end method

.method public final a(Lcom/umeng/analytics/pro/cl;)V
    .locals 3

    sget-object v0, Lcom/umeng/analytics/pro/cj;->f:[B

    const/16 v1, 0xe

    iget-byte v2, p1, Lcom/umeng/analytics/pro/cl;->a:B

    iget p1, p1, Lcom/umeng/analytics/pro/cl;->b:I

    if-gt p1, v1, :cond_0

    shl-int/lit8 p1, p1, 0x4

    aget-byte v0, v0, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/cj;->b(B)V

    goto :goto_0

    :cond_0
    aget-byte v0, v0, v2

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(B)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/cj;->b(I)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/umeng/analytics/pro/cm;)V
    .locals 2

    iget v0, p1, Lcom/umeng/analytics/pro/cm;->c:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/cj;->b(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(I)V

    sget-object v0, Lcom/umeng/analytics/pro/cj;->f:[B

    iget-byte v1, p1, Lcom/umeng/analytics/pro/cm;->a:B

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x4

    iget-byte p1, p1, Lcom/umeng/analytics/pro/cm;->b:B

    aget-byte p1, v0, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/cj;->b(B)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lcom/umeng/analytics/pro/bw;

    const-string p1, "UTF-8 not supported!"

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

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(I)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->m:Lcom/umeng/analytics/pro/bo;

    iget-object v1, v0, Lcom/umeng/analytics/pro/bo;->a:Ljava/lang/Object;

    check-cast v1, [S

    iget v2, v0, Lcom/umeng/analytics/pro/bo;->b:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Lcom/umeng/analytics/pro/bo;->b:I

    aget-short v0, v1, v2

    iput-short v0, p0, Lcom/umeng/analytics/pro/cj;->n:S

    return-void
.end method

.method public final b(B)V
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->r:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void
.end method

.method public final b(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    and-int/lit8 v2, p1, -0x80

    iget-object v3, p0, Lcom/umeng/analytics/pro/cj;->a:[B

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v0, v3, v2}, Lcom/umeng/analytics/pro/dd;->b(I[BI)V

    return-void

    :cond_0
    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    ushr-int/lit8 p1, p1, 0x7

    move v1, v2

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/cj;->b(B)V

    return-void
.end method

.method public final f(I)V
    .locals 4

    if-ltz p1, :cond_2

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/umeng/analytics/pro/cj;->q:J

    cmp-long p0, v2, v0

    if-eqz p0, :cond_1

    int-to-long v0, p1

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/umeng/analytics/pro/cq;

    const-string v0, "Length exceeded max allowed: "

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
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->m:Lcom/umeng/analytics/pro/bo;

    iget-short v1, p0, Lcom/umeng/analytics/pro/cj;->n:S

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/bo;->a(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/umeng/analytics/pro/cj;->n:S

    sget-object p0, Lcom/umeng/analytics/pro/cj;->d:Lcom/umeng/analytics/pro/cu;

    return-object p0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->m:Lcom/umeng/analytics/pro/bo;

    iget-object v1, v0, Lcom/umeng/analytics/pro/bo;->a:Ljava/lang/Object;

    check-cast v1, [S

    iget v2, v0, Lcom/umeng/analytics/pro/bo;->b:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Lcom/umeng/analytics/pro/bo;->b:I

    aget-short v0, v1, v2

    iput-short v0, p0, Lcom/umeng/analytics/pro/cj;->n:S

    return-void
.end method

.method public final l()Lcom/umeng/analytics/pro/ck;
    .locals 6

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->u()B

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/umeng/analytics/pro/cj;->e:Lcom/umeng/analytics/pro/ck;

    return-object p0

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->v()S

    move-result v1

    goto :goto_0

    :cond_1
    iget-short v2, p0, Lcom/umeng/analytics/pro/cj;->n:S

    add-int/2addr v2, v1

    int-to-short v1, v2

    :goto_0
    new-instance v2, Lcom/umeng/analytics/pro/ck;

    and-int/lit8 v0, v0, 0xf

    int-to-byte v3, v0

    invoke-static {v3}, Lcom/umeng/analytics/pro/cj;->d(B)B

    move-result v4

    const-string v5, ""

    invoke-direct {v2, v5, v4, v1}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    :cond_2
    if-ne v3, v4, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/cj;->p:Ljava/lang/Boolean;

    :cond_4
    iput-short v1, p0, Lcom/umeng/analytics/pro/cj;->n:S

    return-object v2
.end method

.method public final n()Lcom/umeng/analytics/pro/cm;
    .locals 3

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->E()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->u()B

    move-result p0

    :goto_0
    new-instance v1, Lcom/umeng/analytics/pro/cm;

    shr-int/lit8 v2, p0, 0x4

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/umeng/analytics/pro/cj;->d(B)B

    move-result v2

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    invoke-static {p0}, Lcom/umeng/analytics/pro/cj;->d(B)B

    move-result p0

    invoke-direct {v1, v2, p0, v0}, Lcom/umeng/analytics/pro/cm;-><init>(BBI)V

    return-object v1
.end method

.method public final p()Lcom/umeng/analytics/pro/cl;
    .locals 3

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->u()B

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->E()I

    move-result v1

    :cond_0
    invoke-static {v0}, Lcom/umeng/analytics/pro/cj;->d(B)B

    move-result p0

    new-instance v0, Lcom/umeng/analytics/pro/cl;

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/pro/cl;-><init>(BI)V

    return-object v0
.end method

.method public final r()Lcom/umeng/analytics/pro/ct;
    .locals 2

    new-instance v0, Lcom/umeng/analytics/pro/ct;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->p()Lcom/umeng/analytics/pro/cl;

    move-result-object p0

    iget-byte v1, p0, Lcom/umeng/analytics/pro/cl;->a:B

    iget p0, p0, Lcom/umeng/analytics/pro/cl;->b:I

    invoke-direct {v0, v1, p0}, Lcom/umeng/analytics/pro/ct;-><init>(BI)V

    return-object v0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/pro/cj;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/analytics/pro/cj;->p:Ljava/lang/Boolean;

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->u()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
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

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object p0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v1

    aget-byte p0, p0, v1

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/dd;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/umeng/analytics/pro/cj;->c:[B

    invoke-virtual {v0, p0, v2}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    :goto_0
    return p0
.end method

.method public final v()S
    .locals 1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->E()I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public final w()I
    .locals 1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->E()I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final x()J
    .locals 11

    iget-object v0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0x80

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v3

    move p0, v5

    :goto_0
    add-int v8, v3, v5

    aget-byte v8, v1, v8

    and-int/lit8 v9, v8, 0x7f

    int-to-long v9, v9

    shl-long/2addr v9, p0

    or-long/2addr v6, v9

    and-int/2addr v8, v4

    if-eq v8, v4, :cond_0

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/umeng/analytics/pro/dd;->a(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 p0, p0, 0x7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->u()B

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    int-to-long v8, v1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_2

    :goto_2
    ushr-long v0, v6, v2

    const-wide/16 v2, 0x1

    and-long/2addr v2, v6

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0

    :cond_2
    add-int/lit8 v5, v5, 0x7

    goto :goto_1
.end method

.method public final y()D
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object p0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0, v1, v0}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    const/4 p0, 0x7

    aget-byte p0, v1, p0

    int-to-long v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    const/4 p0, 0x6

    aget-byte p0, v1, p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x30

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const/4 p0, 0x5

    aget-byte p0, v1, p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x28

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const/4 p0, 0x4

    aget-byte p0, v1, p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x20

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const/4 p0, 0x3

    aget-byte p0, v1, p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x18

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const/4 p0, 0x2

    aget-byte p0, v1, p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x10

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const/4 p0, 0x1

    aget-byte p0, v1, p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 p0, 0x0

    aget-byte p0, v1, p0

    int-to-long v0, p0

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final z()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/umeng/analytics/pro/cp;->g:Lcom/umeng/analytics/pro/dd;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cj;->E()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/cj;->f(I)V

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->h()I

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UTF-8"

    if-lt p0, v1, :cond_1

    :try_start_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->f()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/dd;->g()I

    move-result v4

    invoke-direct {p0, v3, v4, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/dd;->a(I)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_2
    new-array v3, v1, [B

    invoke-virtual {v0, v3, v1}, Lcom/umeng/analytics/pro/dd;->d([BI)I

    move-object v0, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/umeng/analytics/pro/bw;

    const-string v0, "UTF-8 not supported!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
