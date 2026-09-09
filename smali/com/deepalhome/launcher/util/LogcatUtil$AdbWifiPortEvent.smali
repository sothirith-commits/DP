.class public final Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final elapsedRealtimeMs:J

.field public final port:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->port:Ljava/lang/String;

    iput-wide p1, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->elapsedRealtimeMs:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;

    iget-object v1, p1, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->port:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->port:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->elapsedRealtimeMs:J

    iget-wide p0, p1, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->elapsedRealtimeMs:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->port:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->elapsedRealtimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdbWifiPortEvent(port="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedRealtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;->elapsedRealtimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
