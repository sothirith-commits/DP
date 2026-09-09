.class public final Landroid/sun/security/x509/RDN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final assertion:[Landroid/sun/security/x509/AVA;

.field public volatile canonicalString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, "\""

    const-string v8, "empty AVA in RDN \""

    if-ltz v2, :cond_2

    invoke-static {p1, v6, v2}, Landroid/sun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v6, v5

    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x5c

    if-eq v5, v9, :cond_1

    const/4 v5, 0x1

    if-eq v6, v5, :cond_1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/sun/security/x509/AVA;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, p2}, Landroid/sun/security/x509/AVA;-><init>(Ljava/io/StringReader;Ljava/util/Map;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v2, 0x1

    move v5, v3

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-static {v8, p1, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v5, v6

    :goto_1
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, Landroid/sun/security/x509/AVA;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, p2}, Landroid/sun/security/x509/AVA;-><init>(Ljava/io/StringReader;Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/sun/security/x509/AVA;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/sun/security/x509/AVA;

    iput-object p1, p0, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-static {v8, p1, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/sun/security/x509/RDN;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/sun/security/x509/RDN;

    iget-object v0, p0, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    array-length v0, v0

    iget-object v2, p1, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/sun/security/x509/RDN;->toRFC2253String$1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/sun/security/x509/RDN;->toRFC2253String$1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroid/sun/security/x509/RDN;->toRFC2253String$1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toRFC2253String$1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/sun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/sun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/sun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    aget-object p0, p0, v2

    invoke-virtual {p0, p2}, Landroid/sun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2b

    if-nez p1, :cond_3

    :goto_1
    array-length p1, p0

    if-ge v2, p1, :cond_6

    if-lez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    aget-object p1, p0, v2

    invoke-virtual {p1, p2}, Landroid/sun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    move p2, v2

    :goto_2
    array-length v3, p0

    if-ge p2, v3, :cond_4

    aget-object v3, p0, p2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    sget-object p0, Landroid/sun/security/x509/AVAComparator;->INSTANCE:Landroid/sun/security/x509/AVAComparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_6

    if-lez v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/x509/AVA;

    invoke-virtual {p0}, Landroid/sun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Landroid/sun/security/x509/RDN;->assertion:[Landroid/sun/security/x509/AVA;

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/sun/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_2

    if-eqz v2, :cond_1

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/sun/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
