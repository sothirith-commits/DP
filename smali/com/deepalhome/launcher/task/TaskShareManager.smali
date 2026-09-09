.class public final Lcom/deepalhome/launcher/task/TaskShareManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

.field public static final SHARE_CODE_REGEX:Lkotlin/text/Regex;

.field public static final endpoints:Ljava/util/List;

.field public static final gson:Lcom/google/gson/Gson;

.field public static final httpClient:Lokhttp3/OkHttpClient;

.field public static final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/task/TaskShareManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/TaskShareManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[A-Z0-9]{6}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskShareManager;->SHARE_CODE_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;

    sget-object v1, Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$1;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$1;

    sget-object v2, Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$2;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$2;

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;

    sget-object v2, Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$3;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$3;

    sget-object v3, Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$4;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager$endpoints$4;

    invoke-direct {v1, v2, v3}, Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/task/TaskShareManager;->endpoints:Ljava/util/List;

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

    sput-object v1, Lcom/deepalhome/launcher/task/TaskShareManager;->httpClient:Lokhttp3/OkHttpClient;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskShareManager;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/task/TaskShareManager;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native access$deserializeTask(Lcom/deepalhome/launcher/task/TaskShareManager;Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ScheduledTask;
.end method

.method public static native downloadConfigWithEndpoint(Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end method

.method public static native downloadWithEndpoint(Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end method

.method public static native uploadJsonWithShareCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end method

.method public static native uploadWithEndpoint(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end method
