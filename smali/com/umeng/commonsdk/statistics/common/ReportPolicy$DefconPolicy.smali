.class public final Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "SourceFile"


# instance fields
.field public defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;


# virtual methods
.method public final isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    iget p0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldSendMessage(Z)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    iget p0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x5265c00

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x1b77400

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0xdbba00

    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long p0, v0, v2

    if-ltz p0, :cond_3

    return p1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
