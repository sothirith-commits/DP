.class public final Lcom/umeng/analytics/pro/dc;
.super Lcom/umeng/analytics/pro/dd;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/pro/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/dc;->h()I

    move-result v0

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/pro/dc;->a:[B

    iget v1, p0, Lcom/umeng/analytics/pro/dc;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lcom/umeng/analytics/pro/dc;->a(I)V

    :cond_1
    return p3
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/umeng/analytics/pro/dc;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/umeng/analytics/pro/dc;->b:I

    return-void
.end method

.method public final b(I[BI)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No writing allowed!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()[B
    .locals 0

    iget-object p0, p0, Lcom/umeng/analytics/pro/dc;->a:[B

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcom/umeng/analytics/pro/dc;->b:I

    return p0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/umeng/analytics/pro/dc;->c:I

    iget p0, p0, Lcom/umeng/analytics/pro/dc;->b:I

    sub-int/2addr v0, p0

    return v0
.end method
