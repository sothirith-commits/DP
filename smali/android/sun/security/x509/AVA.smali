.class public final Landroid/sun/security/x509/AVA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRESERVE_OLD_DC_ENCODING:Z

.field public static final debug:Landroid/sun/security/util/Debug;


# instance fields
.field public final oid:Landroid/sun/security/util/ObjectIdentifier;

.field public final value:Landroid/sun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "x509"

    invoke-static {v0}, Landroid/sun/security/util/Debug;->getInstance(Ljava/lang/String;)Landroid/sun/security/util/Debug;

    move-result-object v0

    sput-object v0, Landroid/sun/security/x509/AVA;->debug:Landroid/sun/security/util/Debug;

    new-instance v0, Lorg/bouncycastle/util/Properties$1;

    invoke-direct {v0}, Lorg/bouncycastle/util/Properties$1;-><init>()V

    const-string v1, "com.sun.security.preserveOldDCEncoding"

    iput-object v1, v0, Lorg/bouncycastle/util/Properties$1;->val$propertyName:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Landroid/sun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/StringReader;Ljava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v4, "Incorrect AVA format"

    invoke-static {v1, v4}, Landroid/sun/security/x509/AVA;->readChar(Ljava/io/StringReader;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_23

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/sun/security/x509/AVAKeyword;->oidMap:Ljava/util/HashMap;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v5, :cond_3

    sget-object v5, Landroid/sun/security/x509/AVAKeyword;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sun/security/x509/AVAKeyword;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Landroid/sun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v4, v5, Landroid/sun/security/x509/AVAKeyword;->oid:Landroid/sun/security/util/ObjectIdentifier;

    goto :goto_1

    :cond_0
    const-string v5, "OID."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    if-lt v5, v7, :cond_2

    const/16 v7, 0x39

    if-gt v5, v7, :cond_2

    new-instance v5, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v5, v4}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid keyword \""

    const-string v2, "\""

    invoke-static {v1, v4, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v4, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v4, v5}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v4, v0, Landroid/sun/security/x509/AVA;->oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_5

    new-instance v1, Landroid/sun/security/util/DerValue;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/sun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    goto/16 :goto_10

    :cond_5
    const/16 v9, 0x23

    if-ne v4, v9, :cond_b

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, v6

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v5

    invoke-static {v5}, Landroid/sun/security/x509/AVA;->isTerminator(I)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v6, :cond_7

    rem-int/lit8 v6, v6, 0x2

    if-eq v6, v2, :cond_6

    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/sun/security/util/DerValue;-><init>([B)V

    iput-object v1, v0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    goto/16 :goto_10

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA parse, odd number of hex digits"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA parse, zero hex digits"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    const-string v9, "0123456789ABCDEF"

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_a

    rem-int/lit8 v5, v6, 0x2

    if-ne v5, v2, :cond_9

    mul-int/lit8 v4, v4, 0x10

    int-to-byte v5, v7

    add-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_9
    int-to-byte v4, v7

    :goto_3
    add-int/2addr v6, v2

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVA parse, invalid hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v9, 0x16

    const/16 v10, 0xc

    sget-boolean v11, Landroid/sun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    const/16 v12, 0x5c

    const/16 v13, 0x22

    if-ne v4, v13, :cond_16

    const-string v4, "Quoted string did not end in quote"

    invoke-static {v1, v4}, Landroid/sun/security/x509/AVA;->readChar(Ljava/io/StringReader;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move/from16 v16, v2

    :goto_4
    if-eq v14, v13, :cond_10

    if-ne v14, v12, :cond_e

    invoke-static {v1, v4}, Landroid/sun/security/x509/AVA;->readChar(Ljava/io/StringReader;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14, v1}, Landroid/sun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/StringReader;)Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v14

    move/from16 v16, v6

    goto :goto_4

    :cond_c
    if-eq v14, v12, :cond_e

    if-eq v14, v13, :cond_e

    int-to-char v2, v14

    const-string v6, ",+=\n<>#;"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid escaped character in AVA: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    invoke-static {v15}, Landroid/sun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    :cond_f
    int-to-char v2, v14

    invoke-static {v2}, Landroid/sun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v6

    and-int v16, v16, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v4}, Landroid/sun/security/x509/AVA;->readChar(Ljava/io/StringReader;Ljava/lang/String;)I

    move-result v14

    const/4 v6, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    invoke-static {v15}, Landroid/sun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v2

    if-eq v2, v7, :cond_11

    if-eq v2, v5, :cond_11

    if-ne v2, v8, :cond_15

    sget-object v1, Landroid/sun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Landroid/sun/security/util/ObjectIdentifier;

    iget-object v2, v0, Landroid/sun/security/x509/AVA;->oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v1}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroid/sun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v1}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez v11, :cond_12

    goto :goto_6

    :cond_12
    if-eqz v16, :cond_13

    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/sun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Landroid/sun/security/util/DerValue;-><init>(Ljava/lang/String;B)V

    goto :goto_7

    :cond_14
    :goto_6
    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Landroid/sun/security/util/DerValue;-><init>(Ljava/lang/String;B)V

    :goto_7
    iput-object v1, v0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    goto/16 :goto_10

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v2

    const/4 v13, 0x0

    :goto_8
    if-ne v4, v12, :cond_19

    const-string v4, "Invalid trailing backslash"

    invoke-static {v1, v4}, Landroid/sun/security/x509/AVA;->readChar(Ljava/io/StringReader;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1}, Landroid/sun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/StringReader;)Ljava/lang/Byte;

    move-result-object v14

    if-eqz v14, :cond_17

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v4

    const/4 v7, 0x0

    goto :goto_d

    :cond_17
    int-to-char v14, v4

    const-string v15, ",=\n+<>#;\\\" "

    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v15, v8, :cond_18

    move v14, v2

    goto :goto_9

    :cond_18
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escaped character in AVA: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v14, 0x0

    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    const-string v8, " "

    if-lez v15, :cond_1b

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v13, :cond_1a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v15, v2

    goto :goto_a

    :cond_1a
    invoke-static {v6}, Landroid/sun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    :cond_1b
    int-to-char v15, v4

    invoke-static {v15}, Landroid/sun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v16

    and-int v7, v7, v16

    if-ne v4, v5, :cond_1c

    if-nez v14, :cond_1c

    add-int/2addr v13, v2

    goto :goto_c

    :cond_1c
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v13, :cond_1d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v2

    goto :goto_b

    :cond_1d
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v4

    :goto_d
    invoke-static {v4}, Landroid/sun/security/x509/AVA;->isTerminator(I)Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-static {v6}, Landroid/sun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_1e
    sget-object v1, Landroid/sun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Landroid/sun/security/util/ObjectIdentifier;

    iget-object v2, v0, Landroid/sun/security/x509/AVA;->oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v1}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    sget-object v1, Landroid/sun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v1}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-nez v11, :cond_1f

    goto :goto_e

    :cond_1f
    if-eqz v7, :cond_20

    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/sun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_20
    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Landroid/sun/security/util/DerValue;-><init>(Ljava/lang/String;B)V

    goto :goto_f

    :cond_21
    :goto_e
    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Landroid/sun/security/util/DerValue;-><init>(Ljava/lang/String;B)V

    :goto_f
    iput-object v1, v0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    :goto_10
    return-void

    :cond_22
    const/4 v8, -0x1

    goto/16 :goto_8

    :cond_23
    move-object/from16 v5, p2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static getEmbeddedHexPair(ILjava/io/StringReader;)Ljava/lang/Byte;
    .locals 2

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, "unexpected EOF - escaped hex value must include two valid digits"

    invoke-static {p1, v0}, Landroid/sun/security/x509/AVA;->readChar(Ljava/io/StringReader;Ljava/lang/String;)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    shl-int/lit8 p0, p0, 0x4

    add-int/2addr p0, p1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "escaped hex value must include two valid digits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEmbeddedHexString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static isDerString(Landroid/sun/security/util/DerValue;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x13

    const/16 v3, 0xc

    if-eqz p1, :cond_1

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    if-eq p0, v3, :cond_2

    const/16 p1, 0x16

    if-eq p0, p1, :cond_2

    const/16 p1, 0x1b

    if-eq p0, p1, :cond_2

    const/16 p1, 0x1e

    if-eq p0, p1, :cond_2

    if-eq p0, v2, :cond_2

    const/16 p1, 0x14

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static isTerminator(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public static readChar(Ljava/io/StringReader;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final derEncode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 3

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Landroid/sun/security/x509/AVA;->oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v0}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object p0, p0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    invoke-virtual {p0, v0}, Landroid/sun/security/util/DerValue;->encode(Landroid/sun/security/util/DerOutputStream;)V

    const/16 p0, 0x30

    invoke-virtual {v1, p0, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/sun/security/x509/AVA;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroid/sun/security/x509/AVA;

    invoke-virtual {p0}, Landroid/sun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/sun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroid/sun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    sget-object v1, Landroid/sun/security/x509/AVAKeyword;->oidMap:Ljava/util/HashMap;

    iget-object p0, p0, Landroid/sun/security/x509/AVA;->oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {p0}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    sget-object p2, Landroid/sun/security/x509/AVAKeyword;->oidMap:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/x509/AVAKeyword;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/sun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/sun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "OID."

    invoke-static {p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x41

    if-lt p0, p1, :cond_9

    const/16 p2, 0x7a

    if-gt p0, p2, :cond_9

    const/16 v2, 0x61

    const/16 v3, 0x5a

    if-le p0, v3, :cond_3

    if-lt p0, v2, :cond_9

    :cond_3
    move p0, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p0, v4, :cond_8

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, p1, :cond_4

    if-gt v4, p2, :cond_4

    if-le v4, v3, :cond_6

    if-ge v4, v2, :cond_6

    :cond_4
    const/16 v5, 0x30

    if-lt v4, v5, :cond_5

    const/16 v5, 0x39

    if-le v4, v5, :cond_6

    :cond_5
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_7

    :cond_6
    add-int/2addr p0, v0

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword character is not a letter, digit, or underscore"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword does not start with letter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toRFC2253CanonicalString()Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/sun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const-string v4, "DER Value conversion"

    const/16 v5, 0x23

    iget-object p0, p0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    const/16 v6, 0x10

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/sun/security/x509/AVA;->isDerString(Landroid/sun/security/util/DerValue;Z)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_d

    aget-byte v3, p0, v1

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    move v7, v4

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_c

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/sun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v9

    const/16 v10, 0x5c

    const-string v11, ",+<>;\"\\"

    if-nez v9, :cond_6

    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_6

    if-nez v4, :cond_3

    if-ne v8, v5, :cond_3

    goto :goto_4

    :cond_3
    sget-object v7, Landroid/sun/security/x509/AVA;->debug:Landroid/sun/security/util/Debug;

    if-eqz v7, :cond_5

    const-string v7, "ava"

    invoke-static {v7}, Landroid/sun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v8, v7

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_4

    aget-byte v11, v7, v9

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v12, v11, 0x4

    and-int/lit8 v12, v12, 0xf

    invoke-static {v12, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v11, v11, 0xf

    invoke-static {v11, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move v7, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v4, :cond_7

    if-eq v8, v5, :cond_8

    :cond_7
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_9

    :cond_8
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    if-nez v7, :cond_b

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v2

    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Landroid/sun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    const-string v3, "DER Value conversion"

    iget-object p0, p0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    const/16 v4, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Landroid/sun/security/x509/AVA;->isDerString(Landroid/sun/security/util/DerValue;Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v1, p0

    :goto_0
    if-ge p1, v1, :cond_11

    aget-byte v2, p0, p1

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, p1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x5c

    if-ge v2, v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/sun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v6

    const-string v7, ",=+<>#;\"\\"

    if-nez v6, :cond_6

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    const-string v3, "\\00"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    sget-object v6, Landroid/sun/security/x509/AVA;->debug:Landroid/sun/security/util/Debug;

    if-eqz v6, :cond_5

    const-string v6, "ava"

    invoke-static {v6}, Landroid/sun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v6, v3

    move v7, p1

    :goto_2
    if-ge v7, v6, :cond_8

    aget-byte v8, v3, v7

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v9, v8, 0x4

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, p1

    :goto_5
    array-length v3, p0

    const/16 v4, 0xd

    const/16 v6, 0x20

    if-ge v2, v3, :cond_b

    aget-char v3, p0, v2

    if-eq v3, v6, :cond_a

    if-eq v3, v4, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_d

    aget-char v7, p0, v3

    if-eq v7, v6, :cond_c

    if-eq v7, v4, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_d
    :goto_8
    array-length v4, p0

    if-ge p1, v4, :cond_10

    aget-char v4, p0, p1

    if-lt p1, v2, :cond_e

    if-le p1, v3, :cond_f

    :cond_e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/sun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, "0123456789ABCDEF"

    iget-object p0, p0, Landroid/sun/security/x509/AVA;->value:Landroid/sun/security/util/DerValue;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v0, p0

    :goto_0
    if-ge v5, v0, :cond_10

    aget-byte v1, p0, v5

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v5

    move v6, v3

    move v7, v6

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    const/16 v10, 0x20

    if-ge v3, v8, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/sun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ",+=\n<>#;\\\""

    const/16 v13, 0x5c

    if-nez v11, :cond_4

    :try_start_1
    invoke-virtual {v12, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_1

    goto :goto_4

    :cond_1
    sget-object v7, Landroid/sun/security/x509/AVA;->debug:Landroid/sun/security/util/Debug;

    if-eqz v7, :cond_3

    const-string v7, "ava"

    invoke-static {v7}, Landroid/sun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_2

    aget-byte v10, v7, v9

    invoke-virtual {p0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v11, v10, 0x4

    and-int/lit8 v11, v11, 0xf

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v12}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    move v7, v5

    goto :goto_6

    :cond_3
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    :goto_4
    if-nez v6, :cond_7

    if-nez v3, :cond_5

    if-eq v8, v10, :cond_6

    if-eq v8, v9, :cond_6

    :cond_5
    invoke-virtual {v12, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_7

    :cond_6
    move v6, v1

    :cond_7
    if-eq v8, v10, :cond_a

    if-eq v8, v9, :cond_a

    const/16 v7, 0x22

    if-eq v8, v7, :cond_8

    if-ne v8, v13, :cond_9

    :cond_8
    invoke-virtual {p0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    move v7, v5

    goto :goto_5

    :cond_a
    if-nez v6, :cond_b

    if-eqz v7, :cond_b

    move v6, v1

    :cond_b
    move v7, v1

    :goto_5
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_e

    if-ne v0, v9, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v6, :cond_f

    :cond_e
    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DER Value conversion"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
