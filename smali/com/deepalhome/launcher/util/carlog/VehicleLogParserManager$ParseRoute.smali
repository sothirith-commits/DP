.class public final Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final airConditionMatch:Z

.field public final isEz6:Z

.field public final parserMatch:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->isEz6:Z

    iput-boolean p2, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->airConditionMatch:Z

    iput-boolean p3, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->parserMatch:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;

    iget-boolean v1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->isEz6:Z

    iget-boolean v3, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->isEz6:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->airConditionMatch:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->airConditionMatch:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->parserMatch:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->parserMatch:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->isEz6:Z

    if-eqz v1, :cond_0

    move v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->airConditionMatch:Z

    if-eqz v2, :cond_1

    move v2, v0

    :cond_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->parserMatch:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParseRoute(isEz6="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->isEz6:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", airConditionMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->airConditionMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", parserMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->parserMatch:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
