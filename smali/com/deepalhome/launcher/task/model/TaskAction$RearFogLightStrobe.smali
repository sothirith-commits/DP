.class public final Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;
.super Lcom/deepalhome/launcher/task/model/TaskAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RearFogLightStrobe"
.end annotation


# instance fields
.field private final duration:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-string v0, "Strobe rear fog light"

    const/4 v1, 0x0

    const-string v2, "rear_fog_light_strobe"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;IILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->copy(I)Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    return p0
.end method

.method public final copy(I)Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    iget p1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDuration()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RearFogLightStrobe(duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->duration:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
