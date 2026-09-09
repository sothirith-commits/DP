.class public abstract Landroid/sun/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMAIL_ADDRESS_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PKCS9_OIDS:[Landroid/sun/security/util/ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xe

    const/16 v2, 0x10

    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "[B"

    const-string v7, "jar"

    invoke-static {v7}, Landroid/sun/security/util/Debug;->getInstance(Ljava/lang/String;)Landroid/sun/security/util/Debug;

    const/16 v7, 0x12

    new-array v8, v7, [Landroid/sun/security/util/ObjectIdentifier;

    sput-object v8, Landroid/sun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Landroid/sun/security/util/ObjectIdentifier;

    move v8, v5

    :goto_0
    sget-object v15, Landroid/sun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Landroid/sun/security/util/ObjectIdentifier;

    array-length v9, v15

    sub-int/2addr v9, v4

    if-ge v8, v9, :cond_0

    const/16 v11, 0x348

    const v12, 0x1bb8d

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/16 v14, 0x9

    move-object v1, v15

    move v15, v8

    filled-new-array/range {v9 .. v15}, [I

    move-result-object v9

    invoke-static {v9}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v9

    aput-object v9, v1, v8

    add-int/2addr v8, v5

    goto :goto_0

    :cond_0
    move-object v1, v15

    array-length v8, v1

    sub-int/2addr v8, v4

    new-array v9, v3, [I

    fill-array-data v9, :array_0

    invoke-static {v9}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v9

    aput-object v9, v1, v8

    array-length v8, v1

    sub-int/2addr v8, v5

    new-array v9, v3, [I

    fill-array-data v9, :array_1

    invoke-static {v9}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v9

    aput-object v9, v1, v8

    aget-object v8, v1, v5

    sput-object v8, Landroid/sun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Landroid/sun/security/util/ObjectIdentifier;

    aget-object v8, v1, v4

    const/4 v8, 0x3

    aget-object v9, v1, v8

    const/4 v9, 0x4

    aget-object v10, v1, v9

    const/4 v10, 0x5

    aget-object v11, v1, v10

    const/4 v11, 0x6

    aget-object v12, v1, v11

    const/4 v12, 0x7

    aget-object v13, v1, v12

    const/16 v13, 0x8

    aget-object v14, v1, v13

    aget-object v14, v1, v3

    const/16 v14, 0xa

    aget-object v15, v1, v14

    aget-object v15, v1, v0

    const/16 v15, 0xf

    aget-object v16, v1, v15

    aget-object v16, v1, v2

    const/16 v16, 0x11

    aget-object v17, v1, v16

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v7}, Ljava/util/Hashtable;-><init>(I)V

    const-string v7, "emailaddress"

    aget-object v15, v1, v5

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "unstructuredname"

    aget-object v15, v1, v4

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "contenttype"

    aget-object v15, v1, v8

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "messagedigest"

    aget-object v15, v1, v9

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "signingtime"

    aget-object v15, v1, v10

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "countersignature"

    aget-object v15, v1, v11

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "challengepassword"

    aget-object v15, v1, v12

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "unstructuredaddress"

    aget-object v15, v1, v13

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "extendedcertificateattributes"

    aget-object v15, v1, v3

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "issuerandserialnumber"

    aget-object v15, v1, v14

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xb

    aget-object v15, v1, v7

    const-string v7, "rsaproprietary"

    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0xc

    aget-object v14, v1, v15

    invoke-virtual {v2, v7, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xd

    aget-object v14, v1, v7

    const-string v15, "signingdescription"

    invoke-virtual {v2, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "extensionrequest"

    aget-object v15, v1, v0

    invoke-virtual {v2, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "smimecapability"

    const/16 v15, 0xf

    aget-object v0, v1, v15

    invoke-virtual {v2, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signingcertificate"

    const/16 v14, 0x10

    aget-object v15, v1, v14

    invoke-virtual {v2, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signaturetimestamptoken"

    aget-object v15, v1, v16

    invoke-virtual {v2, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v14}, Ljava/util/Hashtable;-><init>(I)V

    aget-object v2, v1, v5

    const-string v5, "EmailAddress"

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v4

    const-string v4, "UnstructuredName"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v8

    const-string v4, "ContentType"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v9

    const-string v4, "MessageDigest"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v10

    const-string v4, "SigningTime"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v11

    const-string v4, "Countersignature"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v12

    const-string v4, "ChallengePassword"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v13

    const-string v4, "UnstructuredAddress"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v3

    const-string v3, "ExtendedCertificateAttributes"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    aget-object v2, v1, v2

    const-string v3, "IssuerAndSerialNumber"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb

    aget-object v2, v1, v2

    const-string v3, "RSAProprietary"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v7

    const-string v3, "SMIMESigningDesc"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe

    aget-object v2, v1, v2

    const-string v3, "ExtensionRequest"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf

    aget-object v2, v1, v2

    const-string v3, "SMIMECapability"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x10

    aget-object v2, v1, v2

    const-string v3, "SigningCertificate"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v1, v16

    const-string v2, "SignatureTimestampToken"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Byte;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v11}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v9}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    const/16 v2, 0x31

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "java.util.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data
.end method
