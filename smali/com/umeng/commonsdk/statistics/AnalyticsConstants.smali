.class public final Lcom/umeng/commonsdk/statistics/AnalyticsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static APPLOG_URL_LIST:[Ljava/lang/String;

.field public static commonDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDeviceType()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I

    return-void
.end method
