.class public final Landroid/sun/misc/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-ne p0, v2, :cond_0

    move p0, v3

    :cond_0
    :goto_0
    if-ge v0, p0, :cond_5

    array-length v2, v1

    if-lt v0, v2, :cond_1

    sub-int v2, p0, v0

    array-length v4, v1

    add-int/lit16 v4, v4, 0x400

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v4, v1

    add-int v5, v0, v2

    if-ge v4, v5, :cond_2

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_1

    :cond_1
    array-length v2, v1

    sub-int/2addr v2, v0

    :cond_2
    :goto_1
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_4

    if-ne p0, v3, :cond_3

    array-length p0, v1

    if-eq p0, v0, :cond_5

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Detect premature EOF"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/2addr v0, v2

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1
.end method
