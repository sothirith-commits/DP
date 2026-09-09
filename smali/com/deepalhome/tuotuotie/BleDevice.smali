.class public final Lcom/deepalhome/tuotuotie/BleDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final address:Ljava/lang/String;

.field public batteryLevel:I

.field public final connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

.field public final eventActions:Ljava/util/Map;

.field public final name:Ljava/lang/String;

.field public nickname:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/LinkedHashMap;I)V
    .locals 7

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, -0x1

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Lkotlin/collections/EmptyMap;

    move-result-object p5

    :cond_2
    move-object v5, p5

    sget-object v6, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/tuotuotie/BleDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;)V
    .locals 1

    const-string v0, "nickname"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "eventActions"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "connectionState"

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    iput p4, p0, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    iput-object p5, p0, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    iput-object p6, p0, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    return-void
.end method

.method public static copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_2

    iget p3, p0, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    :cond_2
    move v3, p3

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_3

    iget-object p4, p0, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p6, 0x20

    if-eqz p1, :cond_4

    iget-object p5, p0, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    :cond_4
    move-object p6, p5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "nickname"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "eventActions"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "connectionState"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/deepalhome/tuotuotie/BleDevice;

    move-object p0, v5

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move p4, v3

    move-object p5, v4

    invoke-direct/range {p0 .. p6}, Lcom/deepalhome/tuotuotie/BleDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;)V

    return-object v5
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/tuotuotie/BleDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v1, p1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    iget v3, p1, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    iget-object v3, p1, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    iget v1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BleDevice(address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nickname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", batteryLevel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", eventActions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", connectionState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
