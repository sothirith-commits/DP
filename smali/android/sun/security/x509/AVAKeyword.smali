.class public final Landroid/sun/security/x509/AVAKeyword;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final keywordMap:Ljava/util/HashMap;

.field public static final oidMap:Ljava/util/HashMap;


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final oid:Landroid/sun/security/util/ObjectIdentifier;

.field public final rfc1779Compliant:Z

.field public final rfc2253Compliant:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sun/security/x509/AVAKeyword;->oidMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sun/security/x509/AVAKeyword;->keywordMap:Ljava/util/HashMap;

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    sget-object v1, Landroid/sun/security/x509/X500Name;->commonName_oid:Landroid/sun/security/util/ObjectIdentifier;

    const-string v2, "CN"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "C"

    sget-object v2, Landroid/sun/security/x509/X500Name;->countryName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "L"

    sget-object v2, Landroid/sun/security/x509/X500Name;->localityName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    sget-object v1, Landroid/sun/security/x509/X500Name;->stateName_oid:Landroid/sun/security/util/ObjectIdentifier;

    const-string v2, "S"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v2, "ST"

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "O"

    sget-object v2, Landroid/sun/security/x509/X500Name;->orgName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "OU"

    sget-object v2, Landroid/sun/security/x509/X500Name;->orgUnitName_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "T"

    sget-object v2, Landroid/sun/security/x509/X500Name;->title_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "IP"

    sget-object v2, Landroid/sun/security/x509/X500Name;->ipAddress_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "STREET"

    sget-object v2, Landroid/sun/security/x509/X500Name;->streetAddress_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "DC"

    sget-object v2, Landroid/sun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    sget-object v1, Landroid/sun/security/x509/X500Name;->DNQUALIFIER_OID:Landroid/sun/security/util/ObjectIdentifier;

    const-string v2, "DNQUALIFIER"

    invoke-direct {v0, v2, v1, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v2, "DNQ"

    invoke-direct {v0, v2, v1, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "SURNAME"

    sget-object v2, Landroid/sun/security/x509/X500Name;->SURNAME_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "GIVENNAME"

    sget-object v2, Landroid/sun/security/x509/X500Name;->GIVENNAME_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "INITIALS"

    sget-object v2, Landroid/sun/security/x509/X500Name;->INITIALS_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "GENERATION"

    sget-object v2, Landroid/sun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    sget-object v1, Landroid/sun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Landroid/sun/security/util/ObjectIdentifier;

    const-string v2, "EMAIL"

    invoke-direct {v0, v2, v1, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v2, "EMAILADDRESS"

    invoke-direct {v0, v2, v1, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "UID"

    sget-object v2, Landroid/sun/security/x509/X500Name;->userid_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Landroid/sun/security/x509/AVAKeyword;

    const-string v1, "SERIALNUMBER"

    sget-object v2, Landroid/sun/security/x509/X500Name;->SERIALNUMBER_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/sun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    iput-object p2, p0, Landroid/sun/security/x509/AVAKeyword;->oid:Landroid/sun/security/util/ObjectIdentifier;

    iput-boolean p3, p0, Landroid/sun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    iput-boolean p4, p0, Landroid/sun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    sget-object p3, Landroid/sun/security/x509/AVAKeyword;->oidMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroid/sun/security/x509/AVAKeyword;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isCompliant(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-boolean p0, p0, Landroid/sun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid standard "

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean p0, p0, Landroid/sun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    return p0

    :cond_2
    return v0
.end method
