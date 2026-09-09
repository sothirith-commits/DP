.class public final Landroid/sun/security/x509/PKIXExtensions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AuthInfoAccess_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final AuthorityKey_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final BasicConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final CRLDistributionPoints_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final CRLNumber_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final CertificateIssuer_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final CertificatePolicies_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final DeltaCRLIndicator_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final ExtendedKeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final FreshestCRL_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final InhibitAnyPolicy_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final IssuerAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final IssuingDistributionPoint_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final KeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final NameConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final OCSPNoCheck_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PolicyConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PolicyMappings_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PrivateKeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final ReasonCode_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SubjectAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SubjectInfoAccess_Id:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SubjectKey_Id:Landroid/sun/security/util/ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/16 v2, 0x1d

    const/16 v3, 0x23

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v3

    const/16 v4, 0xe

    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object v4

    const/16 v5, 0xf

    filled-new-array {v0, v1, v2, v5}, [I

    move-result-object v5

    const/16 v6, 0x10

    filled-new-array {v0, v1, v2, v6}, [I

    move-result-object v6

    const/16 v7, 0x20

    filled-new-array {v0, v1, v2, v7}, [I

    move-result-object v7

    const/16 v8, 0x21

    filled-new-array {v0, v1, v2, v8}, [I

    move-result-object v8

    const/16 v9, 0x11

    filled-new-array {v0, v1, v2, v9}, [I

    move-result-object v9

    const/16 v10, 0x12

    filled-new-array {v0, v1, v2, v10}, [I

    move-result-object v10

    const/16 v11, 0x9

    filled-new-array {v0, v1, v2, v11}, [I

    move-result-object v12

    const/16 v13, 0x13

    filled-new-array {v0, v1, v2, v13}, [I

    move-result-object v13

    const/16 v14, 0x1e

    filled-new-array {v0, v1, v2, v14}, [I

    move-result-object v14

    const/16 v15, 0x24

    filled-new-array {v0, v1, v2, v15}, [I

    move-result-object v15

    const/16 v11, 0x1f

    filled-new-array {v0, v1, v2, v11}, [I

    move-result-object v11

    move-object/from16 v17, v11

    const/16 v11, 0x14

    filled-new-array {v0, v1, v2, v11}, [I

    move-result-object v11

    move-object/from16 v18, v11

    const/16 v11, 0x1c

    filled-new-array {v0, v1, v2, v11}, [I

    move-result-object v11

    move-object/from16 v19, v11

    const/16 v11, 0x1b

    filled-new-array {v0, v1, v2, v11}, [I

    move-result-object v11

    move-object/from16 v20, v11

    const/16 v11, 0x15

    filled-new-array {v0, v1, v2, v11}, [I

    move-result-object v11

    move-object/from16 v21, v15

    const/16 v15, 0x17

    filled-new-array {v0, v1, v2, v15}, [I

    move-result-object v15

    move-object/from16 v22, v14

    const/16 v14, 0x18

    filled-new-array {v0, v1, v2, v14}, [I

    move-result-object v14

    move-object/from16 v23, v14

    const/16 v14, 0x25

    filled-new-array {v0, v1, v2, v14}, [I

    move-result-object v14

    move-object/from16 v24, v15

    const/16 v15, 0x36

    filled-new-array {v0, v1, v2, v15}, [I

    move-result-object v15

    filled-new-array {v0, v1, v2, v2}, [I

    move-result-object v25

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    move-object/from16 v26, v0

    const/16 v0, 0x2e

    move-object/from16 v27, v1

    move-object/from16 v16, v11

    const/4 v1, 0x2

    const/4 v11, 0x5

    filled-new-array {v1, v11, v2, v0}, [I

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v3}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->AuthorityKey_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v4}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->SubjectKey_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->KeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v6}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v7}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v8}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->PolicyMappings_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v9}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v10}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v14}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v15}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v12}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v13}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->BasicConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v16 .. v16}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->ReasonCode_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v24 .. v24}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v23 .. v23}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v22 .. v22}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->NameConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v21 .. v21}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v17 .. v17}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v18 .. v18}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->CRLNumber_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v19 .. v19}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v20 .. v20}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v25 .. v25}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v27 .. v27}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v26 .. v26}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v0}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/PKIXExtensions;->FreshestCRL_Id:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v1}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Landroid/sun/security/util/ObjectIdentifier;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
