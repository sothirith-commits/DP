.class public final Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final left:Ljava/lang/String;

.field public final middle:Ljava/lang/String;

.field public final right:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->middle:Ljava/lang/String;

    iput p3, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->right:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;

    iget-object v1, p1, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->middle:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->middle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->right:I

    iget p1, p1, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->right:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->middle:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->right:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarStatusTriple(left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->left:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", middle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->middle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser$CarStatusTriple;->right:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
