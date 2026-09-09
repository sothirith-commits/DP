.class public final Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "SourceFile"


# instance fields
.field public HOURS_DAY:J


# virtual methods
.method public final shouldSendMessage(Z)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide p0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;->HOURS_DAY:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
