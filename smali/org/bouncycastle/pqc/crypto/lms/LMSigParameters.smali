.class public final Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final lms_sha256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final paramBuilders:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;


# instance fields
.field public final digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public final h:I

.field public final m:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/4 v4, 0x6

    const/16 v5, 0xa

    invoke-direct {v0, v4, v3, v5, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/4 v4, 0x7

    const/16 v6, 0xf

    invoke-direct {v0, v4, v3, v6, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v4, 0x8

    const/16 v7, 0x14

    invoke-direct {v0, v4, v3, v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v4, 0x9

    const/16 v8, 0x19

    invoke-direct {v0, v4, v3, v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v4, 0x18

    invoke-direct {v0, v5, v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0xb

    invoke-direct {v0, v9, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0xc

    invoke-direct {v0, v9, v4, v6, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0xd

    invoke-direct {v0, v9, v4, v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0xe

    invoke-direct {v0, v9, v4, v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v6, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0x10

    invoke-direct {v0, v9, v3, v5, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0x11

    invoke-direct {v0, v9, v3, v6, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0x12

    invoke-direct {v0, v9, v3, v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v9, 0x13

    invoke-direct {v0, v9, v3, v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-direct {v0, v7, v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v2, 0x15

    invoke-direct {v0, v2, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v2, 0x16

    invoke-direct {v0, v2, v4, v6, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v2, 0x17

    invoke-direct {v0, v2, v4, v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-direct {v0, v4, v4, v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->paramBuilders:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;

    return-void
.end method

.method public constructor <init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->m:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->h:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
