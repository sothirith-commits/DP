.class public final Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "SourceFile"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final shouldSendMessage(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    const-string p1, "Wi-Fi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
