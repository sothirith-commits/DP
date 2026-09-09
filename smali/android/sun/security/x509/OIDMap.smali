.class public final Landroid/sun/security/x509/OIDMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final nameMap:Ljava/util/HashMap;

.field public static final oidMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sun/security/x509/OIDMap;->oidMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sun/security/x509/OIDMap;->nameMap:Ljava/util/HashMap;

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->SubjectKey_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "SubjectKeyIdentifierExtension"

    const-string v2, "x509.info.extensions.SubjectKeyIdentifier"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->KeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "KeyUsageExtension"

    const-string v2, "x509.info.extensions.KeyUsage"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "PrivateKeyUsageExtension"

    const-string v2, "x509.info.extensions.PrivateKeyUsage"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "SubjectAlternativeNameExtension"

    const-string v2, "x509.info.extensions.SubjectAlternativeName"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "IssuerAlternativeNameExtension"

    const-string v2, "x509.info.extensions.IssuerAlternativeName"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->BasicConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "BasicConstraintsExtension"

    const-string v2, "x509.info.extensions.BasicConstraints"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->CRLNumber_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "CRLNumberExtension"

    const-string v2, "x509.info.extensions.CRLNumber"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->ReasonCode_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "CRLReasonCodeExtension"

    const-string v2, "x509.info.extensions.CRLReasonCode"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->NameConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "NameConstraintsExtension"

    const-string v2, "x509.info.extensions.NameConstraints"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->PolicyMappings_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "PolicyMappingsExtension"

    const-string v2, "x509.info.extensions.PolicyMappings"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->AuthorityKey_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "AuthorityKeyIdentifierExtension"

    const-string v2, "x509.info.extensions.AuthorityKeyIdentifier"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "PolicyConstraintsExtension"

    const-string v2, "x509.info.extensions.PolicyConstraints"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    const-string v1, "NetscapeCertTypeExtension"

    const-string v2, "x509.info.extensions.NetscapeCertType"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "CertificatePoliciesExtension"

    const-string v2, "x509.info.extensions.CertificatePolicies"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "ExtendedKeyUsageExtension"

    const-string v2, "x509.info.extensions.ExtendedKeyUsage"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "InhibitAnyPolicyExtension"

    const-string v2, "x509.info.extensions.InhibitAnyPolicy"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "CRLDistributionPointsExtension"

    const-string v2, "x509.info.extensions.CRLDistributionPoints"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "CertificateIssuerExtension"

    const-string v2, "x509.info.extensions.CertificateIssuer"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "SubjectInfoAccessExtension"

    const-string v2, "x509.info.extensions.SubjectInfoAccess"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "AuthorityInfoAccessExtension"

    const-string v2, "x509.info.extensions.AuthorityInfoAccess"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "IssuingDistributionPointExtension"

    const-string v2, "x509.info.extensions.IssuingDistributionPoint"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "DeltaCRLIndicatorExtension"

    const-string v2, "x509.info.extensions.DeltaCRLIndicator"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->FreshestCRL_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "FreshestCRLExtension"

    const-string v2, "x509.info.extensions.FreshestCRL"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Landroid/sun/security/util/ObjectIdentifier;

    const-string v1, "OCSPNoCheckExtension"

    const-string v2, "x509.info.extensions.OCSPNoCheck"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInternal(Ljava/lang/String;Landroid/sun/security/util/ObjectIdentifier;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/sun/security/x509/OIDMap$OIDInfo;

    invoke-direct {v0, p0, p2}, Landroid/sun/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/sun/security/x509/OIDMap;->oidMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroid/sun/security/x509/OIDMap;->nameMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getClass(Landroid/sun/security/util/ObjectIdentifier;)Ljava/lang/Class;
    .locals 3

    sget-object v0, Landroid/sun/security/x509/OIDMap;->oidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/x509/OIDMap$OIDInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/sun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/sun/security/x509/OIDMap$OIDInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    return-object p0

    :goto_1
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/security/cert/CertificateException;

    throw p0
.end method
