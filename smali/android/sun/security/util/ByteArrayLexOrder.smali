.class public final Landroid/sun/security/util/ByteArrayLexOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, [B

    check-cast p2, [B

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    array-length v0, p2

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p2, p0

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p1

    array-length p1, p2

    sub-int v0, p0, p1

    :goto_1
    return v0
.end method
