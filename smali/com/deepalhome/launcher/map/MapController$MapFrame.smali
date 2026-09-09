.class public final Lcom/deepalhome/launcher/map/MapController$MapFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final height:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    iput p2, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    iput p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    iput p4, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;

    iget v1, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    iget v3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    iget v3, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    iget v3, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    iget p1, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isValid()Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    if-lez v0, :cond_0

    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MapFrame(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
