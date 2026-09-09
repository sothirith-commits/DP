.class public final Lcom/deepalhome/mitemp/MiThermometerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/mitemp/MiThermometerParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/mitemp/MiThermometerParser;

    invoke-direct {v0}, Lcom/deepalhome/mitemp/MiThermometerParser;-><init>()V

    sput-object v0, Lcom/deepalhome/mitemp/MiThermometerParser;->INSTANCE:Lcom/deepalhome/mitemp/MiThermometerParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBatteryPercent(I)I
    .locals 2

    const/16 v0, 0xa28

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc80

    if-lt p0, v1, :cond_1

    const/16 p0, 0x64

    goto :goto_0

    :cond_1
    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    const/16 v0, 0x258

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static parseReading([B)Lcom/deepalhome/mitemp/MiReading;
    .locals 10

    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    array-length v0, p0

    const/high16 v2, 0x42c80000    # 100.0f

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    aget-byte v0, p0, v7

    and-int/lit16 v0, v0, 0xff

    const/16 v9, 0x55

    if-ne v0, v9, :cond_1

    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    const/16 v9, 0xaa

    if-ne v0, v9, :cond_1

    array-length v0, p0

    if-lt v0, v8, :cond_0

    aget-byte v0, p0, v5

    aget-byte v1, p0, v4

    invoke-static {v0, v1}, Lcom/deepalhome/mitemp/MiThermometerParser;->readLittleEndianUInt16(BB)I

    move-result v0

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/4 v4, 0x7

    aget-byte v4, p0, v4

    invoke-static {v1, v4}, Lcom/deepalhome/mitemp/MiThermometerParser;->readLittleEndianUInt16(BB)I

    move-result v1

    aget-byte v3, p0, v3

    const/16 v4, 0x9

    aget-byte p0, p0, v4

    invoke-static {v3, p0}, Lcom/deepalhome/mitemp/MiThermometerParser;->readLittleEndianUInt16(BB)I

    move-result p0

    new-instance v3, Lcom/deepalhome/mitemp/MiReading;

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    invoke-static {p0}, Lcom/deepalhome/mitemp/MiThermometerParser;->calculateBatteryPercent(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v0, v1, p0}, Lcom/deepalhome/mitemp/MiReading;-><init>(FILjava/lang/Integer;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extended payload must contain at least 10 bytes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget-byte v0, p0, v6

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, v3

    or-int/2addr v0, v8

    if-eqz v6, :cond_3

    add-int/lit16 v0, v0, -0x7fff

    :cond_3
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    array-length v6, p0

    if-lt v6, v4, :cond_4

    aget-byte v1, p0, v1

    aget-byte p0, p0, v5

    invoke-static {v1, p0}, Lcom/deepalhome/mitemp/MiThermometerParser;->readLittleEndianUInt16(BB)I

    move-result p0

    invoke-static {p0}, Lcom/deepalhome/mitemp/MiThermometerParser;->calculateBatteryPercent(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    new-instance v1, Lcom/deepalhome/mitemp/MiReading;

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-direct {v1, v0, v3, p0}, Lcom/deepalhome/mitemp/MiReading;-><init>(FILjava/lang/Integer;)V

    move-object v3, v1

    :goto_2
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload must contain at least 3 bytes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readLittleEndianUInt16(BB)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method
