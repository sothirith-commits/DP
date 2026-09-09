.class public final Lcom/deepalhome/launcher/task/MagiskPrecheckResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adbPassed:Z

.field public final message:Ljava/lang/String;

.field public final suPassed:Z

.field public final wifiPassed:Z


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->wifiPassed:Z

    iput-boolean p2, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->adbPassed:Z

    iput-boolean p3, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->suPassed:Z

    iput-object p4, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;

    iget-boolean v1, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->wifiPassed:Z

    iget-boolean v3, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->wifiPassed:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->adbPassed:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->adbPassed:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->suPassed:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->suPassed:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCanProceed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->wifiPassed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->adbPassed:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->suPassed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->wifiPassed:Z

    if-eqz v1, :cond_0

    move v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->adbPassed:Z

    if-eqz v2, :cond_1

    move v2, v0

    :cond_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->suPassed:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->message:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MagiskPrecheckResult(wifiPassed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->wifiPassed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adbPassed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->adbPassed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", suPassed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->suPassed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/MagiskPrecheckResult;->message:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
