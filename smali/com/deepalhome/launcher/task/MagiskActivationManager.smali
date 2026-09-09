.class public final Lcom/deepalhome/launcher/task/MagiskActivationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager;

.field public static lastToastAt:J

.field public static lastToastMessage:Ljava/lang/String;

.field public static final scriptClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/task/MagiskActivationManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/MagiskActivationManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/MagiskActivationManager;->INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v2, v3, v1}, Lokhttp3/internal/Util;->checkDuration(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    sput-object v1, Lcom/deepalhome/launcher/task/MagiskActivationManager;->scriptClient:Lokhttp3/OkHttpClient;

    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/task/MagiskActivationManager;->lastToastMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native buildSuPrecheckResult()Lcom/deepalhome/launcher/task/MagiskPrecheckResult;
.end method
