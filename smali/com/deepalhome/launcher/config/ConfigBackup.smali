.class public final Lcom/deepalhome/launcher/config/ConfigBackup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appVersion:Ljava/lang/String;

.field private final config:Lcom/deepalhome/launcher/config/UserConfig;

.field private final createdAt:J

.field private final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/deepalhome/launcher/config/UserConfig;)V
    .locals 1

    const-string v0, "appVersion"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    iput-object p2, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    iput-wide p3, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    iput-object p5, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/config/ConfigBackup;ILjava/lang/String;JLcom/deepalhome/launcher/config/UserConfig;ILjava/lang/Object;)Lcom/deepalhome/launcher/config/ConfigBackup;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/deepalhome/launcher/config/ConfigBackup;->copy(ILjava/lang/String;JLcom/deepalhome/launcher/config/UserConfig;)Lcom/deepalhome/launcher/config/ConfigBackup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    return-wide v0
.end method

.method public final component4()Lcom/deepalhome/launcher/config/UserConfig;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;JLcom/deepalhome/launcher/config/UserConfig;)Lcom/deepalhome/launcher/config/ConfigBackup;
    .locals 6

    const-string p0, "appVersion"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/config/ConfigBackup;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/config/ConfigBackup;-><init>(ILjava/lang/String;JLcom/deepalhome/launcher/config/UserConfig;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/config/ConfigBackup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/config/ConfigBackup;

    iget v1, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    iget v3, p1, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    iget-wide v5, p1, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    iget-object p1, p1, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getConfig()Lcom/deepalhome/launcher/config/UserConfig;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    return-object p0
.end method

.method public final getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    return-wide v0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigBackup(version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/config/ConfigBackup;->config:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
