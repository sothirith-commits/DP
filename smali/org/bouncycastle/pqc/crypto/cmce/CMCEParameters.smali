.class public final Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;


# instance fields
.field public final engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

.field public final name:Ljava/lang/String;

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v3, 0xda0

    const/16 v4, 0x40

    const-string v1, "mceliece348864"

    const/16 v2, 0xc

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v10, 0xda0

    const/16 v11, 0x40

    const-string v8, "mceliece348864f"

    const/16 v9, 0xc

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v4, 0x1200

    const/16 v5, 0x60

    const-string v2, "mceliece460896"

    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v10, 0x1200

    const/16 v11, 0x60

    const-string v8, "mceliece460896f"

    const/16 v9, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v4, 0x1a20

    const/16 v5, 0x80

    const-string v2, "mceliece6688128"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v10, 0x1a20

    const/16 v11, 0x80

    const-string v8, "mceliece6688128f"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v4, 0x1b30

    const/16 v5, 0x77

    const-string v2, "mceliece6960119"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v10, 0x1b30

    const/16 v11, 0x77

    const-string v8, "mceliece6960119f"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v4, 0x2000

    const/16 v5, 0x80

    const-string v2, "mceliece8192128"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/16 v10, 0x2000

    const/16 v11, 0x80

    const-string v8, "mceliece8192128f"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->name:Ljava/lang/String;

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->t:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    iput p3, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iput p4, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iput p2, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    mul-int/lit8 p5, p4, 0x2

    iput p5, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    mul-int p5, p4, p2

    iput p5, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr p3, p5

    iput p3, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    const/4 p3, 0x1

    shl-int p5, p3, p2

    sub-int/2addr p5, p3

    iput p5, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    const/16 p5, 0xc

    if-ne p2, p5, :cond_0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/cmce/GF12;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;-><init>()V

    :goto_0
    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/bouncycastle/pqc/crypto/cmce/GF13;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;-><init>()V

    goto :goto_0

    :goto_1
    rem-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    return-void
.end method
