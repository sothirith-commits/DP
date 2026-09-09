.class public final Landroid/sun/security/x509/X500Name;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;


# static fields
.field public static final DNQUALIFIER_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final DOMAIN_COMPONENT_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final GENERATIONQUALIFIER_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final GIVENNAME_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final INITIALS_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SERIALNUMBER_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SURNAME_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final commonName_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final countryName_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final internedOIDs:Ljava/util/HashMap;

.field public static final ipAddress_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final localityName_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final orgName_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final orgUnitName_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final stateName_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final streetAddress_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final title_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final userid_oid:Landroid/sun/security/util/ObjectIdentifier;


# instance fields
.field public canonicalDn:Ljava/lang/String;

.field public dn:Ljava/lang/String;

.field public final names:[Landroid/sun/security/x509/RDN;

.field public final x500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sun/security/x509/X500Name;->internedOIDs:Ljava/util/HashMap;

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2, v2}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v1}, [I

    move-result-object v5

    const/4 v6, 0x6

    filled-new-array {v0, v1, v2, v6}, [I

    move-result-object v6

    const/4 v7, 0x7

    filled-new-array {v0, v1, v2, v7}, [I

    move-result-object v8

    const/16 v9, 0x8

    filled-new-array {v0, v1, v2, v9}, [I

    move-result-object v9

    const/16 v10, 0x9

    filled-new-array {v0, v1, v2, v10}, [I

    move-result-object v10

    const/16 v11, 0xa

    filled-new-array {v0, v1, v2, v11}, [I

    move-result-object v11

    const/16 v12, 0xb

    filled-new-array {v0, v1, v2, v12}, [I

    move-result-object v13

    const/16 v14, 0xc

    filled-new-array {v0, v1, v2, v14}, [I

    move-result-object v14

    const/16 v15, 0x2a

    filled-new-array {v0, v1, v2, v15}, [I

    move-result-object v15

    const/16 v7, 0x2b

    filled-new-array {v0, v1, v2, v7}, [I

    move-result-object v7

    const/16 v12, 0x2c

    filled-new-array {v0, v1, v2, v12}, [I

    move-result-object v12

    move-object/from16 v16, v12

    const/16 v12, 0x2e

    filled-new-array {v0, v1, v2, v12}, [I

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x7

    new-array v12, v2, [I

    fill-array-data v12, :array_1

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v3}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->commonName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->SERIALNUMBER_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v6}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->countryName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v8}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->localityName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v11}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->orgName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v13}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->orgUnitName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v9}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->stateName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v10}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->streetAddress_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v14}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/X500Name;->title_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v0}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->DNQUALIFIER_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v4}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->SURNAME_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v15}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->GIVENNAME_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v7}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->INITIALS_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static/range {v16 .. v16}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v1}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->ipAddress_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v12}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v2}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/X500Name;->intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/X500Name;->userid_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x4
        0x1
        0x2a
        0x2
        0xb
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x19
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v2, p1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Landroid/sun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v7, v1

    move v8, v7

    move v9, v8

    :goto_0
    if-gez v4, :cond_2

    if-ltz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/sun/security/x509/RDN;

    invoke-direct {v3, p1, v0}, Landroid/sun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-array p1, v1, [Landroid/sun/security/x509/RDN;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/sun/security/x509/RDN;

    iput-object p1, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    goto/16 :goto_7

    :cond_2
    :goto_1
    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    if-gez v4, :cond_4

    move v4, v6

    goto :goto_2

    :cond_4
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    invoke-static {p1, v9, v4}, Landroid/sun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v6, v8

    const/4 v8, 0x1

    if-eq v6, v8, :cond_a

    const/16 v10, 0x5c

    if-ne v4, v8, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_5

    goto :goto_4

    :cond_5
    if-le v4, v8, :cond_6

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_6

    add-int/lit8 v11, v4, -0x2

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_6

    goto :goto_4

    :cond_6
    if-le v4, v8, :cond_9

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_9

    add-int/lit8 v8, v4, -0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_9

    add-int/lit8 v8, v4, -0x1

    move v11, v1

    :goto_3
    if-lt v8, v9, :cond_8

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_7

    add-int/lit8 v11, v11, 0x1

    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_8
    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/sun/security/x509/RDN;

    invoke-direct {v7, v6, v0}, Landroid/sun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v4, 0x1

    move v8, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v8, v6

    :goto_5
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v3, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    goto/16 :goto_0

    :cond_b
    :goto_6
    new-array p1, v1, [Landroid/sun/security/x509/RDN;

    iput-object p1, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    :goto_7
    return-void
.end method

.method public static countQuotes(Ljava/lang/String;II)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    if-eq v1, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static intern(Landroid/sun/security/util/ObjectIdentifier;)Landroid/sun/security/util/ObjectIdentifier;
    .locals 2

    sget-object v0, Landroid/sun/security/x509/X500Name;->internedOIDs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sun/security/util/ObjectIdentifier;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 10

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object p0, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    array-length v5, v4

    new-array v6, v5, [Landroid/sun/security/util/DerOutputStream;

    move v7, v2

    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_0

    new-instance v8, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v8}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v7

    aget-object v9, v4, v7

    invoke-virtual {v9, v8}, Landroid/sun/security/x509/AVA;->derEncode(Landroid/sun/security/util/DerOutputStream;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    new-array v4, v5, [[B

    move v7, v2

    :goto_2
    if-ge v7, v5, :cond_1

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    sget-object v6, Landroid/sun/security/util/DerOutputStream;->lexOrder:Landroid/sun/security/util/ByteArrayLexOrder;

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v6, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v6}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    move v7, v2

    :goto_3
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    const/16 v4, 0x31

    invoke-virtual {v0, v4, v6}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x30

    invoke-virtual {p1, p0, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/sun/security/x509/X500Name;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/sun/security/x509/X500Name;

    iget-object v0, p0, Landroid/sun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p1, Landroid/sun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v0, v0

    iget-object v2, p1, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v2, v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    aget-object v3, v3, v2

    iget-object v4, p1, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    aget-object v4, v4, v2

    iget-object v3, v3, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    array-length v3, v3

    iget-object v4, v4, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    array-length v4, v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/sun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/sun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/sun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRFC2253CanonicalName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/sun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Landroid/sun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/sun/security/x509/RDN;->toRFC2253String$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroid/sun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/sun/security/x509/X500Name;->dn:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/sun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/X500Name;->dn:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    if-eqz v1, :cond_2

    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, Landroid/sun/security/x509/X500Name;->names:[Landroid/sun/security/x509/RDN;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/sun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/X500Name;->dn:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object p0, p0, Landroid/sun/security/x509/X500Name;->dn:Ljava/lang/String;

    return-object p0
.end method
