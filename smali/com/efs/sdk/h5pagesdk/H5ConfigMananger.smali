.class public Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final a:I

.field private b:Lcom/efs/sdk/base/EfsReporter;

.field private c:I

.field private d:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "H5ConfigMananger"

    iput-object v0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->a:I

    iput v0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->c:I

    iput-boolean v0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->d:Z

    iput-object p1, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->b:Lcom/efs/sdk/base/EfsReporter;

    const-string p1, "apm_native_h5perf_sampling_rate"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger$1;

    invoke-direct {v0, p0}, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger$1;-><init>(Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;)V

    invoke-virtual {p2, p1, v0}, Lcom/efs/sdk/base/EfsReporter;->getAllSdkConfig([Ljava/lang/String;Lcom/efs/sdk/base/observer/IConfigCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;)I
    .locals 0

    iget p0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->c:I

    return p0
.end method

.method public static synthetic a(Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;I)I
    .locals 0

    iput p1, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->c:I

    return p1
.end method

.method public static synthetic a(I)Z
    .locals 3

    invoke-static {}, Lcom/efs/sdk/base/samplingwhitelist/SamplingWhiteListUtil;->isHitWL()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_2

    const/16 v0, 0x64

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;)Lcom/efs/sdk/base/EfsReporter;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->b:Lcom/efs/sdk/base/EfsReporter;

    return-object p0
.end method


# virtual methods
.method public generateLaunchOptions()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->d:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/integrationtesting/IntegrationTestingUtil;->isIntegrationTestingInPeriod()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/efs/sdk/h5pagesdk/H5Manager;->isDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "H5ConfigMananger"

    const-string v0, "Sample did not match, and not in integrated test mode"

    invoke-static {p0, v0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sample"

    iget v2, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->d:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "sampleResult"

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "Y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-string v1, "N"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object p0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_3

    const-string v1, "appName"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p0, "bridgeVersion"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isH5TracerEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->d:Z

    return p0
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/efs/sdk/base/integrationtesting/IntegrationTestingUtil;->isIntegrationTestingInPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger$2;

    invoke-direct {v0, p0, p1}, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger$2;-><init>(Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/efs/sdk/h5pagesdk/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
