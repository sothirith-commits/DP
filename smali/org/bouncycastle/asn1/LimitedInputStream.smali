.class public abstract Lorg/bouncycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final _in:Ljava/io/InputStream;

.field public final _limit:I


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    iput p1, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return-void
.end method


# virtual methods
.method public final setParentEofDetect()V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    instance-of v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    :cond_0
    return-void
.end method
