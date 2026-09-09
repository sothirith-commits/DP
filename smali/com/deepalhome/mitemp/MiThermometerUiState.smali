.class public final Lcom/deepalhome/mitemp/MiThermometerUiState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final batteryPercent:Ljava/lang/Integer;

.field public final connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

.field public final connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

.field public final isBluetoothEnabled:Z

.field public final isScanning:Z

.field public final latestReading:Lcom/deepalhome/mitemp/MiReading;

.field public final logs:Ljava/util/List;

.field public final scanDevices:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/mitemp/MiThermometerUiState;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    sget-object v3, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v8}, Lcom/deepalhome/mitemp/MiThermometerUiState;-><init>(ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1

    const-string v0, "connectionStatus"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "scanDevices"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "logs"

    invoke-static {v0, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isBluetoothEnabled:Z

    iput-boolean p2, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isScanning:Z

    iput-object p3, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    iput-object p4, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    iput-object p5, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    iput-object p6, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    iput-object p7, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->logs:Ljava/util/List;

    return-void
.end method

.method public static copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isBluetoothEnabled:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isScanning:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->logs:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "connectionStatus"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "scanDevices"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "logs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-object p0, v0

    move p1, v2

    move p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-direct/range {p0 .. p8}, Lcom/deepalhome/mitemp/MiThermometerUiState;-><init>(ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-boolean v1, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->isBluetoothEnabled:Z

    iget-boolean v3, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isBluetoothEnabled:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isScanning:Z

    iget-boolean v3, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->isScanning:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->logs:Ljava/util/List;

    iget-object p1, p1, Lcom/deepalhome/mitemp/MiThermometerUiState;->logs:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isBluetoothEnabled:Z

    if-eqz v1, :cond_0

    move v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isScanning:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/deepalhome/mitemp/MiScanDevice;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/deepalhome/mitemp/MiReading;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->logs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiThermometerUiState(isBluetoothEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isBluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScanning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->isScanning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scanDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latestReading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerUiState;->logs:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
