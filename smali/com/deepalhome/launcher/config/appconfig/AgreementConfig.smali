.class public final Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final agreementMessage:Ljava/lang/String;

.field public final agreementTitle:Ljava/lang/String;

.field public final agreementVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementVersion:I

    const v0, 0x7f13009f

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementTitle:Ljava/lang/String;

    const v0, 0x7f13009e

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementMessage:Ljava/lang/String;

    return-void
.end method
