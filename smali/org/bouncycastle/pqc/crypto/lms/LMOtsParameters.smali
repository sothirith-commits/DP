.class public final Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final suppliers:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;


# instance fields
.field public final digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public final n:I

.field public final p:I

.field public final type:I

.field public final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    const/16 v4, 0x109

    const/4 v1, 0x1

    const/16 v2, 0x20

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v3, 0x2

    const/16 v4, 0x85

    const/4 v1, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v3, 0x4

    const/16 v4, 0x43

    const/4 v1, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v3, 0x8

    const/16 v4, 0x22

    const/4 v1, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v3, 0x1

    const/16 v4, 0xc8

    const/4 v1, 0x5

    const/16 v2, 0x18

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v3, 0x2

    const/16 v4, 0x65

    const/4 v1, 0x6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v3, 0x4

    const/16 v4, 0x33

    const/4 v1, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v3, 0x8

    const/16 v4, 0x1a

    const/16 v1, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v11, 0x1

    const/16 v12, 0x109

    const/16 v9, 0x9

    const/16 v10, 0x20

    move-object v8, v0

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x2

    const/16 v5, 0x85

    const/16 v2, 0xa

    const/16 v3, 0x20

    move-object v1, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x4

    const/16 v5, 0x43

    const/16 v2, 0xb

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v4, 0x8

    const/16 v5, 0x22

    const/16 v2, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const/16 v2, 0xd

    const/16 v3, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x2

    const/16 v5, 0x65

    const/16 v2, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x4

    const/16 v5, 0x33

    const/16 v2, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v4, 0x8

    const/16 v5, 0x1a

    const/16 v2, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;

    return-void
.end method

.method public constructor <init>(IIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
