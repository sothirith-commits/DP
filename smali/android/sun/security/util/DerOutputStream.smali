.class public final Landroid/sun/security/util/DerOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# static fields
.field public static final lexOrder:Landroid/sun/security/util/ByteArrayLexOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/sun/security/util/ByteArrayLexOrder;

    invoke-direct {v0}, Landroid/sun/security/util/ByteArrayLexOrder;-><init>()V

    sput-object v0, Landroid/sun/security/util/DerOutputStream;->lexOrder:Landroid/sun/security/util/ByteArrayLexOrder;

    new-instance v0, Landroid/sun/security/util/ByteArrayTagOrder;

    invoke-direct {v0}, Landroid/sun/security/util/ByteArrayTagOrder;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final putInteger(I)V
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x4

    new-array v2, v1, [B

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const v3, 0xff00

    and-int/2addr v3, p1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    const/4 v3, 0x1

    aput-byte v0, v2, v3

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/16 v3, 0x80

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    move p1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v6, v2, v0

    if-ne v6, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-byte v6, v2, v0

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    move p1, v0

    :goto_1
    if-ge v0, v4, :cond_0

    aget-byte v5, v2, v0

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-byte v5, v2, v0

    and-int/2addr v5, v3

    if-nez v5, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    rsub-int/lit8 p1, v0, 0x4

    invoke-virtual {p0, p1}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    :goto_3
    if-ge v0, v1, :cond_3

    aget-byte p1, v2, v0

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final putLength(I)V
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    const/16 v0, -0x7e

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    const/16 v0, -0x7d

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_3
    const/16 v0, -0x7c

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public final putTime(Ljava/util/Date;B)V
    .locals 4

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    const-string v1, "yyMMddHHmmss\'Z\'"

    goto :goto_0

    :cond_0
    const/16 p2, 0x18

    const-string v1, "yyyyMMddHHmmss\'Z\'"

    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write(I)V

    array-length p2, p1

    invoke-virtual {p0, p2}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final putUnalignedBitString(Landroid/sun/security/util/BitArray;)V
    .locals 2

    iget-object v0, p1, Landroid/sun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget p1, p1, Landroid/sun/security/util/BitArray;->length:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write(BLandroid/sun/security/util/DerOutputStream;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    iget p1, p2, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p0, p1}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    iget-object p1, p2, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v0, 0x0

    iget p2, p2, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final write(B[B)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    const/4 p1, 0x0

    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final writeImplicit(BLandroid/sun/security/util/DerOutputStream;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p2, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget p2, p2, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
