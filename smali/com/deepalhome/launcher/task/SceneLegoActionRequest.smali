.class public final Lcom/deepalhome/launcher/task/SceneLegoActionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final additionalSoundLocation:I

.field public final missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

.field public final queryText:Ljava/lang/String;

.field public final sceneName:Ljava/lang/String;

.field public final soundLocation:I

.field public final startTtsText:Ljava/lang/String;

.field public final startViewText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Pure EV mode"

    iput-object v0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->sceneName:Ljava/lang/String;

    const-string v0, "Execute scene pure EV mode"

    iput-object v0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->queryText:Ljava/lang/String;

    const-string v0, "Starting forced pure EV scene."

    iput-object v0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startTtsText:Ljava/lang/String;

    const-string v0, "Starting forced pure EV scene"

    iput-object v0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startViewText:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->soundLocation:I

    iput v0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->additionalSoundLocation:I

    iput-object p1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;

    iget-object v1, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->sceneName:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->sceneName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->queryText:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->queryText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startTtsText:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startTtsText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startViewText:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startViewText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->soundLocation:I

    iget v3, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->soundLocation:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->additionalSoundLocation:I

    iget v3, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->additionalSoundLocation:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->sceneName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->queryText:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startTtsText:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startViewText:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->soundLocation:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->additionalSoundLocation:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SceneLegoActionRequest(sceneName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->sceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queryText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->queryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTtsText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startTtsText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startViewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->startViewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", soundLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->soundLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", additionalSoundLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->additionalSoundLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", missingSceneDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;->missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method