.class public final Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public GFBITS:I

.field public GFMASK:I

.field public IRR_BYTES:I

.field public PK_NCOLS:I

.field public PK_NROWS:I

.field public SYS_N:I

.field public SYS_T:I

.field public gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

.field public usePadding:Z

.field public usePivots:Z


# virtual methods
.method public final getPublicKeySize()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr p0, v0

    mul-int/2addr p0, v1

    return p0

    :cond_0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    mul-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x8

    return v1
.end method
