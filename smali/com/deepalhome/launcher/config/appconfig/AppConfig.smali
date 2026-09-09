.class public final Lcom/deepalhome/launcher/config/appconfig/AppConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final agreementConfig:Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

.field public final dangerousPermissionMessage:Ljava/lang/String;

.field public final dangerousPermissionTitle:Ljava/lang/String;

.field public final filePermissionMessage:Ljava/lang/String;

.field public final filePermissionTitle:Ljava/lang/String;

.field public final floatLogPermissionMessage:Ljava/lang/String;

.field public final floatLogPermissionTitle:Ljava/lang/String;

.field public final floatWindowPermissionMessage:Ljava/lang/String;

.field public final floatWindowPermissionTitle:Ljava/lang/String;

.field public final requestMusicPermissionMessage:Ljava/lang/String;

.field public final requestMusicPermissionTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1301c9

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->filePermissionTitle:Ljava/lang/String;

    const v0, 0x7f1301c8

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->filePermissionMessage:Ljava/lang/String;

    const v0, 0x7f1301e5

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatLogPermissionTitle:Ljava/lang/String;

    const v0, 0x7f1301e4

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatLogPermissionMessage:Ljava/lang/String;

    const v0, 0x7f1301e7

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatWindowPermissionTitle:Ljava/lang/String;

    const v0, 0x7f1301e6

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatWindowPermissionMessage:Ljava/lang/String;

    const v0, 0x7f13016f

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->dangerousPermissionTitle:Ljava/lang/String;

    const v0, 0x7f13016e

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->dangerousPermissionMessage:Ljava/lang/String;

    const v0, 0x7f1303fa

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->requestMusicPermissionTitle:Ljava/lang/String;

    const v0, 0x7f1303f9

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->requestMusicPermissionMessage:Ljava/lang/String;

    new-instance v0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

    invoke-direct {v0}, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->agreementConfig:Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

    return-void
.end method
