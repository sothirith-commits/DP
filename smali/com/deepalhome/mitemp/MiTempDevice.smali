.class public final Lcom/deepalhome/mitemp/MiTempDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final address:Ljava/lang/String;

.field public final batteryPercent:Ljava/lang/Integer;

.field public final connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

.field public final customName:Ljava/lang/String;

.field public final lastUpdatedAt:Ljava/lang/Long;

.field public final latestReading:Lcom/deepalhome/mitemp/MiReading;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/deepalhome/mitemp/MiReading;Lcom/deepalhome/mitemp/MiConnectionStatus;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "address"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "connectionStatus"

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    iput-object p6, p0, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    iput-object p7, p0, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    return-void
.end method

.method public static copy$default(Lcom/deepalhome/mitemp/MiTempDevice;Ljava/lang/String;Lcom/deepalhome/mitemp/MiConnectionStatus;I)Lcom/deepalhome/mitemp/MiTempDevice;
    .locals 8

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    :cond_0
    move-object v3, p1

    iget-object v4, p0, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    and-int/lit8 p1, p3, 0x20

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    :cond_1
    move-object v6, p2

    iget-object v7, p0, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "address"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "name"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "connectionStatus"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/mitemp/MiTempDevice;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/mitemp/MiTempDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/deepalhome/mitemp/MiReading;Lcom/deepalhome/mitemp/MiConnectionStatus;Ljava/lang/Long;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/mitemp/MiTempDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v1, p1, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    iget-object p1, p1, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/deepalhome/mitemp/MiReading;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiTempDevice(address="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latestReading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
