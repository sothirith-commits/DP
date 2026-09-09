.class public final Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final alias:Ljava/lang/String;

.field public final cert:Ljava/security/cert/X509Certificate;

.field public final keyId:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->keyId:[B

    iput-object p3, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->alias:Ljava/lang/String;

    return-void
.end method
