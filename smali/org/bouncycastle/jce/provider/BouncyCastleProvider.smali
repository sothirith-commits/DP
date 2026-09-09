.class public final Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field public static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field public static final ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field public static final DIGESTS:[Ljava/lang/String;

.field public static final KEYSTORES:[Ljava/lang/String;

.field public static final SECURE_RANDOMS:[Ljava/lang/String;

.field public static final SYMMETRIC_CIPHERS:[Lcom/google/gson/internal/ConstructorConstructor$3;

.field public static final SYMMETRIC_GENERIC:[Ljava/lang/String;

.field public static final SYMMETRIC_MACS:[Ljava/lang/String;

.field public static final info:Ljava/lang/String;

.field public static final keyInfoConverters:Ljava/util/HashMap;

.field public static final revChkClass:Ljava/lang/Class;


# instance fields
.field private serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 40

    const-class v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v0, "BouncyCastle Security Provider v1.78"

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/HashMap;

    const-string v0, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    const-string v0, "PBEPBKDF2"

    const-string v1, "PBEPKCS12"

    const-string v2, "PBEPBKDF1"

    const-string v3, "TLSKDF"

    const-string v4, "SCRYPT"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v0, "Poly1305"

    const-string v1, "SipHash"

    const-string v2, "SipHash128"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "AES"

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "ARC4"

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "ARIA"

    const/4 v4, 0x6

    invoke-direct {v3, v0, v4}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "Blowfish"

    const/4 v5, 0x6

    invoke-direct {v4, v0, v5}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "Camellia"

    const/4 v6, 0x6

    invoke-direct {v5, v0, v6}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "CAST5"

    const/4 v7, 0x6

    invoke-direct {v6, v0, v7}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "CAST6"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "ChaCha"

    const/4 v9, 0x6

    invoke-direct {v8, v0, v9}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "DES"

    const/4 v10, 0x6

    invoke-direct {v9, v0, v10}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "DESede"

    const/4 v11, 0x6

    invoke-direct {v10, v0, v11}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "GOST28147"

    const/4 v12, 0x6

    invoke-direct {v11, v0, v12}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "Grainv1"

    const/4 v13, 0x6

    invoke-direct {v12, v0, v13}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "Grain128"

    const/4 v14, 0x6

    invoke-direct {v13, v0, v14}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "HC128"

    const/4 v15, 0x6

    invoke-direct {v14, v0, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "HC256"

    move-object/from16 v16, v14

    const/4 v14, 0x6

    invoke-direct {v15, v0, v14}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "IDEA"

    move-object/from16 v17, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Noekeon"

    move-object/from16 v18, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "RC2"

    move-object/from16 v19, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "RC5"

    move-object/from16 v20, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "RC6"

    move-object/from16 v21, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Rijndael"

    move-object/from16 v22, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Salsa20"

    move-object/from16 v23, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "SEED"

    move-object/from16 v24, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Serpent"

    move-object/from16 v25, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Shacal2"

    move-object/from16 v26, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Skipjack"

    move-object/from16 v27, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "SM4"

    move-object/from16 v28, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "TEA"

    move-object/from16 v29, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Twofish"

    move-object/from16 v30, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Threefish"

    move-object/from16 v31, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "VMPC"

    move-object/from16 v32, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "VMPCKSA3"

    move-object/from16 v33, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "XTEA"

    move-object/from16 v34, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "XSalsa20"

    move-object/from16 v35, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "OpenSSLPBKDF"

    move-object/from16 v36, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "DSTU7624"

    move-object/from16 v37, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "GOST3412_2015"

    move-object/from16 v38, v0

    const/4 v0, 0x6

    invoke-direct {v15, v14, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v14, "Zuc"

    move-object/from16 v39, v15

    const/4 v15, 0x6

    invoke-direct {v0, v14, v15}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    move-object/from16 v36, v38

    move-object/from16 v37, v39

    move-object/from16 v38, v0

    filled-new-array/range {v1 .. v38}, [Lcom/google/gson/internal/ConstructorConstructor$3;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lcom/google/gson/internal/ConstructorConstructor$3;

    const-string v0, "IES"

    const-string v1, "COMPOSITE"

    const-string v2, "X509"

    const-string v3, "EXTERNAL"

    const-string v4, "CompositeSignatures"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v12, "SPHINCSPlus"

    const-string v13, "Dilithium"

    const-string v1, "DSA"

    const-string v2, "DH"

    const-string v3, "EC"

    const-string v4, "RSA"

    const-string v5, "GOST"

    const-string v6, "ECGOST"

    const-string v7, "ElGamal"

    const-string v8, "DSTU4145"

    const-string v9, "GM"

    const-string v10, "EdEC"

    const-string v11, "LMS"

    const-string v14, "Falcon"

    const-string v15, "NTRU"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    const-string v21, "Blake2s"

    const-string v22, "DSTU7564"

    const-string v1, "GOST3411"

    const-string v2, "Keccak"

    const-string v3, "MD2"

    const-string v4, "MD4"

    const-string v5, "MD5"

    const-string v6, "SHA1"

    const-string v7, "RIPEMD128"

    const-string v8, "RIPEMD160"

    const-string v9, "RIPEMD256"

    const-string v10, "RIPEMD320"

    const-string v11, "SHA224"

    const-string v12, "SHA256"

    const-string v13, "SHA384"

    const-string v14, "SHA512"

    const-string v15, "SHA3"

    const-string v16, "Skein"

    const-string v17, "SM3"

    const-string v18, "Tiger"

    const-string v19, "Whirlpool"

    const-string v20, "Blake2b"

    const-string v23, "Haraka"

    const-string v24, "Blake3"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    const-string v0, "PKCS12"

    const-string v1, "BC"

    const-string v2, "BCFKS"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    const-string v0, "DRBG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x3ffc7ae147ae147bL    # 1.78

    sget-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    new-instance v0, Landroid/sun/security/ec/ECKeyFactory$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/sun/security/ec/ECKeyFactory$2;-><init>(ILjava/io/Serializable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$101(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$401(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/security/Provider$Service;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method

.method public static addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 3

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;-><init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/security/Provider$Service;

    move-object v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_3
    return-object v1
.end method

.method public final loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$Mappings"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot create instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$Mappings : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
