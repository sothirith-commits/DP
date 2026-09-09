.class public final Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "SourceFile"


# virtual methods
.method public final shouldSendMessage(Z)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0xa4cb80

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
