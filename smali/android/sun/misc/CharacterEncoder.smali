.class public abstract Landroid/sun/misc/CharacterEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encodeAtom(Ljava/io/OutputStream;[BII)V
.end method

.method public final encodeBuffer([B)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p1, 0x10

    :try_start_0
    new-array v2, p1, [B

    invoke-virtual {p0, v0}, Landroid/sun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, p1

    :goto_1
    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v4}, Landroid/sun/misc/CharacterEncoder;->encodeLinePrefix(I)V

    :goto_2
    if-ge v3, v4, :cond_5

    const/4 v5, 0x1

    add-int v6, v5, v3

    if-gt v6, v4, :cond_4

    invoke-virtual {p0, v0, v2, v3, v5}, Landroid/sun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_3

    :cond_4
    sub-int v5, v4, v3

    invoke-virtual {p0, v0, v2, v3, v5}, Landroid/sun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    :goto_3
    move v3, v6

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/sun/misc/CharacterEncoder;->encodeLineSuffix()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, p1, :cond_0

    :goto_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/Error;

    const-string p1, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/sun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    return-void
.end method

.method public encodeLinePrefix(I)V
    .locals 0

    return-void
.end method

.method public encodeLineSuffix()V
    .locals 0

    iget-object p0, p0, Landroid/sun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method
