.class public final Lcom/umeng/commonsdk/statistics/internal/StatTracer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public lastRequestTime:J

.field public mFailedRequest:I

.field public mLastRequestLatency:I

.field public mLastSuccessfulRequestTime:J

.field public mSuccessfulRequest:I


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    sget-object v2, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "successful_request"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    const-string v3, "failed_requests "

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    const-string v3, "last_request_spent_ms"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    const-string v3, "last_request_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    const-string v3, "last_req"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;
    .locals 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const-string p0, "inside StatTracer. please check context. context must not be null!"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer$a;->a:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    return-object p0
.end method


# virtual methods
.method public final saveSate()V
    .locals 4

    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
