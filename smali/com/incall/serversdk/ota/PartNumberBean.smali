.class public Lcom/incall/serversdk/ota/PartNumberBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hardPartnumber:Ljava/lang/String;

.field private hardVersion:Ljava/lang/String;

.field private softPartnumber:Ljava/lang/String;

.field private softVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHardPartnumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/PartNumberBean;->hardPartnumber:Ljava/lang/String;

    return-object p0
.end method

.method public getHardVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/PartNumberBean;->hardVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSoftPartnumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/PartNumberBean;->softPartnumber:Ljava/lang/String;

    return-object p0
.end method

.method public getSoftVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/ota/PartNumberBean;->softVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setHardPartnumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/PartNumberBean;->hardPartnumber:Ljava/lang/String;

    return-void
.end method

.method public setHardVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/PartNumberBean;->hardVersion:Ljava/lang/String;

    return-void
.end method

.method public setSoftPartnumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/PartNumberBean;->softPartnumber:Ljava/lang/String;

    return-void
.end method

.method public setSoftVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/ota/PartNumberBean;->softVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PartNumberBean{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/incall/serversdk/ota/PartNumberBean;->hardPartnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/incall/serversdk/ota/PartNumberBean;->hardVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/incall/serversdk/ota/PartNumberBean;->softPartnumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/incall/serversdk/ota/PartNumberBean;->softVersion:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
