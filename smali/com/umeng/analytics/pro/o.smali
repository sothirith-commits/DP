.class public final Lcom/umeng/analytics/pro/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static final y:Ljava/lang/Class;

.field public static final z:Ljava/lang/reflect/Method;


# instance fields
.field public b:Lcom/umeng/analytics/pro/o$c;

.field public c:Landroid/content/SharedPreferences;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:I

.field public g:Lorg/json/JSONArray;

.field public i:I

.field public j:I

.field public k:J

.field public u:Z

.field public v:Z

.field public final w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Lcom/umeng/umcrash/UMCrashUtils;

    sput-object v1, Lcom/umeng/analytics/pro/o;->y:Ljava/lang/Class;

    const-string v2, "setPuidAndProvider"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/umeng/analytics/pro/o;->z:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/o;->f:I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/o;->i:I

    iput v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/pro/o;->k:J

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/o;->u:Z

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/o;->v:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "thtstart"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/o;->k:J

    const-string v1, "gkvc"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/analytics/pro/o;->i:I

    const-string v1, "ekvc"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    new-instance v0, Lcom/umeng/analytics/pro/o$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/o$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcom/umeng/analytics/pro/o$b;->a:Lcom/umeng/analytics/pro/o;

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "exception"

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/pro/o;->g(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/pro/o;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static f(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "header"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "sessions"

    const-string v3, "analytics"

    const-string v4, "content"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_0
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "MobclickRT"

    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "--->>> removeAllInstantData: really delete instant session data"

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->b(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    iget-object p0, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string p0, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE."

    invoke-static {v4, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1101

    invoke-static {p0, v2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_3
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    :cond_4
    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    iget-object p0, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static g(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "header"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sessions"

    const-string v4, "analytics"

    const-string v5, "content"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_0
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->i()V

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->h()V

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    iget-object p0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_1
    const-string p0, "MobclickRT"

    const-string v0, "--->>> Error, Should not go to this branch."

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_3
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    :cond_4
    const-string v0, "ekv"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gkv"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->h()V

    :cond_6
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->i()V

    :cond_7
    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    iget-object p0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    :goto_0
    return-void
.end method

.method public static s()Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ana_is_f"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(J)Lorg/json/JSONObject;
    .locals 35

    move-wide/from16 v1, p1

    const-string v3, "gkv"

    const-string v4, "ekv"

    const-string v5, "error"

    const-string v0, "__i=? "

    const-string v6, "id"

    const-string v7, "__a"

    const-string v8, "__sd"

    const-string v9, "pages"

    const-string v10, "autopages"

    const-string v11, "sessions"

    const-string v12, "active_user"

    const-string v13, "userlevel"

    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v14

    sget-object v15, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    return-object v15

    :cond_0
    :try_start_0
    sget-object v16, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v14

    iget-object v15, v14, Lcom/umeng/analytics/pro/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    iget-object v15, v14, Lcom/umeng/analytics/pro/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3c

    :try_start_1
    sget-object v17, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    move-object/from16 v17, v12

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v8, v1, v2, v2, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    if-eqz v12, :cond_11

    :try_start_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    move-object/from16 v19, v8

    :try_start_5
    iget-object v8, v14, Lcom/umeng/analytics/pro/i;->i:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    if-eqz v18, :cond_e

    move-object/from16 v18, v13

    :try_start_6
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    move-object/from16 v20, v3

    :try_start_7
    const-string v3, "__f"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-object/from16 v21, v4

    :try_start_8
    const-string v4, "__e"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-object/from16 v22, v14

    :try_start_9
    const-string v14, "__g"

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v23, v5

    :try_start_a
    const-string v5, "__ii"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    sub-long v24, v24, v26

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_c

    move-object/from16 v24, v0

    :try_start_b
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v25, v7

    :try_start_c
    const-string v7, "__b"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v28, v11

    :try_start_d
    const-string v11, "__c"

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v29, v15

    :try_start_e
    const-string v15, "__d"

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "__sp"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v30, v1

    :try_start_f
    const-string v1, "__pp"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "start_time"

    invoke-virtual {v13, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "end_time"

    invoke-virtual {v13, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "header_foreground_count"

    invoke-static {v5}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v5
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v31, v6

    :try_start_10
    const-string v6, "duration"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-eqz v5, :cond_2

    :try_start_11
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    cmp-long v5, v32, v26

    if-gtz v5, :cond_1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v3, v32, v3

    invoke-virtual {v13, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v32, v1

    move-object v5, v2

    goto :goto_3

    :catchall_0
    :goto_1
    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_19

    :catch_0
    :goto_2
    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_1a

    :cond_1
    move-object/from16 v32, v1

    move-object v5, v2

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v13, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration_old"

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    sub-long v2, v2, v33

    invoke-virtual {v13, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    move-object/from16 v32, v1

    move-object v5, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v13, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    sget v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    new-instance v0, Lorg/json/JSONArray;

    invoke-static {v7}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_6

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v33

    cmp-long v7, v33, v26

    if-lez v7, :cond_5

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v13, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "traffic"

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v11}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "locations"

    new-instance v1, Lorg/json/JSONArray;

    invoke-static {v15}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "_$sp"

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v8}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "_$pp"

    new-instance v1, Lorg/json/JSONObject;

    invoke-static/range {v32 .. v32}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_10

    :catchall_1
    :goto_6
    move-object/from16 v31, v6

    goto/16 :goto_1

    :catch_1
    :goto_7
    move-object/from16 v31, v6

    goto/16 :goto_2

    :catchall_2
    move-object/from16 v30, v1

    goto :goto_6

    :catch_2
    move-object/from16 v30, v1

    goto :goto_7

    :catchall_3
    move-object/from16 v30, v1

    move-object/from16 v31, v6

    move-object v2, v15

    move-object/from16 v1, v28

    goto/16 :goto_19

    :catch_3
    move-object/from16 v30, v1

    move-object/from16 v31, v6

    move-object v2, v15

    move-object/from16 v1, v28

    goto/16 :goto_1a

    :catchall_4
    move-object/from16 v30, v1

    move-object/from16 v31, v6

    :goto_8
    move-object v1, v11

    :goto_9
    move-object v2, v15

    goto/16 :goto_19

    :catch_4
    move-object/from16 v30, v1

    move-object/from16 v31, v6

    :goto_a
    move-object v1, v11

    :goto_b
    move-object v2, v15

    goto/16 :goto_1a

    :catchall_5
    :goto_c
    move-object/from16 v30, v1

    :goto_d
    move-object/from16 v31, v6

    move-object/from16 v25, v7

    goto :goto_8

    :catch_5
    :goto_e
    move-object/from16 v30, v1

    :goto_f
    move-object/from16 v31, v6

    move-object/from16 v25, v7

    goto :goto_a

    :catchall_6
    move-object/from16 v24, v0

    goto :goto_c

    :catch_6
    move-object/from16 v24, v0

    goto :goto_e

    :cond_c
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object v5, v2

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v29, v15

    :cond_d
    :goto_10
    move-object v2, v5

    move-object/from16 v13, v18

    move-object/from16 v8, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v14, v22

    move-object/from16 v5, v23

    move-object/from16 v0, v24

    move-object/from16 v7, v25

    move-object/from16 v11, v28

    move-object/from16 v15, v29

    move-object/from16 v1, v30

    move-object/from16 v6, v31

    goto/16 :goto_0

    :catchall_7
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v23, v5

    goto :goto_d

    :catch_7
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v23, v5

    goto :goto_f

    :catchall_8
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    :goto_11
    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v22, v14

    goto :goto_8

    :catch_8
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    :goto_12
    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v22, v14

    goto :goto_a

    :catchall_9
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    :goto_13
    move-object/from16 v21, v4

    goto :goto_11

    :catch_9
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    :goto_14
    move-object/from16 v21, v4

    goto :goto_12

    :catchall_a
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    goto :goto_13

    :catch_a
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    goto :goto_14

    :cond_e
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v18, v13

    move-object/from16 v22, v14

    move-object/from16 v29, v15

    move-object v5, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    :try_start_12
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :try_start_13
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    :catchall_b
    :try_start_14
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_1b

    :catchall_c
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v8, v21

    move-object/from16 v1, v28

    goto/16 :goto_3b

    :cond_f
    :try_start_15
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-lez v0, :cond_10

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    :try_start_16
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_15

    :cond_10
    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_15

    :catchall_d
    move-object/from16 v31, v6

    move-object v1, v11

    move-object/from16 v21, v3

    move-object v8, v4

    move-object v5, v13

    move-object/from16 v6, v17

    goto/16 :goto_52

    :catchall_e
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    move-object/from16 v18, v13

    move-object/from16 v22, v14

    goto/16 :goto_9

    :catch_b
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    move-object/from16 v18, v13

    move-object/from16 v22, v14

    goto/16 :goto_b

    :cond_11
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    move-object/from16 v18, v13

    move-object/from16 v22, v14

    move-object v2, v15

    :goto_15
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    if-eqz v12, :cond_12

    :try_start_17
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_38

    :cond_12
    :try_start_18
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :catchall_f
    :try_start_19
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    :goto_16
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_38

    goto/16 :goto_1b

    :catchall_10
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    :goto_17
    move-object/from16 v18, v13

    move-object/from16 v22, v14

    move-object v2, v15

    const/4 v12, 0x0

    goto/16 :goto_19

    :catch_c
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    :goto_18
    move-object/from16 v18, v13

    move-object/from16 v22, v14

    move-object v2, v15

    const/4 v12, 0x0

    goto/16 :goto_1a

    :catchall_11
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    move-object/from16 v17, v12

    goto :goto_17

    :catch_d
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    move-object/from16 v17, v12

    goto :goto_18

    :catchall_12
    move-object/from16 v24, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v22, v14

    move-object v2, v15

    const/4 v12, 0x0

    const/16 v30, 0x0

    goto :goto_19

    :catch_e
    move-object/from16 v24, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object v1, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v22, v14

    move-object v2, v15

    const/4 v12, 0x0

    const/16 v30, 0x0

    goto :goto_1a

    :catchall_13
    :goto_19
    :try_start_1a
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    if-eqz v12, :cond_13

    :try_start_1b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_38

    :cond_13
    if-eqz v30, :cond_14

    :try_start_1c
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    :catchall_14
    :cond_14
    :try_start_1d
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_38

    goto/16 :goto_16

    :catchall_15
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v8, v21

    move-object/from16 v21, v20

    goto/16 :goto_51

    :catch_f
    :goto_1a
    :try_start_1e
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    if-eqz v12, :cond_15

    :try_start_1f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_38

    :cond_15
    if-eqz v30, :cond_16

    :try_start_20
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    :catchall_16
    :cond_16
    :try_start_21
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_38

    goto/16 :goto_16

    :goto_1b
    :try_start_22
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_22 .. :try_end_22} :catch_17
    .catchall {:try_start_22 .. :try_end_22} :catchall_1f

    :try_start_23
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_23 .. :try_end_23} :catch_16
    .catchall {:try_start_23 .. :try_end_23} :catchall_1e

    :try_start_24
    const-string v5, "__er"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_38

    if-nez v4, :cond_17

    :try_start_25
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_25 .. :try_end_25} :catch_13
    .catchall {:try_start_25 .. :try_end_25} :catchall_1a

    move-object/from16 v6, v24

    :try_start_26
    invoke-static {v5, v0, v3, v6, v4}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_26 .. :try_end_26} :catch_10
    .catchall {:try_start_26 .. :try_end_26} :catchall_17

    goto :goto_1e

    :catchall_17
    :goto_1c
    move-object v4, v3

    :catchall_18
    move-object/from16 v5, v23

    :catchall_19
    move-object v3, v0

    goto/16 :goto_26

    :catch_10
    :goto_1d
    move-object v4, v3

    :catch_11
    move-object/from16 v5, v23

    :catch_12
    move-object v3, v0

    goto/16 :goto_27

    :catchall_1a
    move-object/from16 v6, v24

    goto :goto_1c

    :catch_13
    move-object/from16 v6, v24

    goto :goto_1d

    :cond_17
    move-object/from16 v6, v24

    :try_start_27
    invoke-static {v5, v0, v3, v3, v3}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_27 .. :try_end_27} :catch_15
    .catchall {:try_start_27 .. :try_end_27} :catchall_1d

    :goto_1e
    if-eqz v4, :cond_1a

    :try_start_28
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_1f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    if-eqz v5, :cond_19

    move-object/from16 v5, v25

    :try_start_29
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v7}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_29 .. :try_end_29} :catch_14
    .catchall {:try_start_29 .. :try_end_29} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-object v3, v0

    move-object/from16 v5, v23

    goto :goto_26

    :catch_14
    move-object v3, v0

    move-object/from16 v5, v23

    goto/16 :goto_27

    :cond_18
    :goto_20
    move-object/from16 v25, v5

    goto :goto_1f

    :cond_19
    :try_start_2a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2a .. :try_end_2a} :catch_11
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    if-lez v5, :cond_1a

    move-object/from16 v5, v23

    :try_start_2b
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_21

    :cond_1a
    move-object/from16 v5, v23

    :goto_21
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2b .. :try_end_2b} :catch_12
    .catchall {:try_start_2b .. :try_end_2b} :catchall_19

    if-eqz v4, :cond_1b

    :try_start_2c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_38

    :cond_1b
    :try_start_2d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1c

    :catchall_1c
    :try_start_2e
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_38

    goto :goto_28

    :catchall_1d
    move-object/from16 v5, v23

    :goto_22
    move-object v3, v0

    :goto_23
    const/4 v4, 0x0

    goto :goto_26

    :catch_15
    move-object/from16 v5, v23

    :goto_24
    move-object v3, v0

    :goto_25
    const/4 v4, 0x0

    goto :goto_27

    :catchall_1e
    move-object/from16 v5, v23

    move-object/from16 v6, v24

    goto :goto_22

    :catch_16
    move-object/from16 v5, v23

    move-object/from16 v6, v24

    goto :goto_24

    :catchall_1f
    move-object/from16 v5, v23

    move-object/from16 v6, v24

    const/4 v3, 0x0

    goto :goto_23

    :catch_17
    move-object/from16 v5, v23

    move-object/from16 v6, v24

    const/4 v3, 0x0

    goto :goto_25

    :goto_26
    :try_start_2f
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_21

    if-eqz v4, :cond_1c

    :try_start_30
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_38

    :cond_1c
    if-eqz v3, :cond_1d

    :try_start_31
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_20

    :catchall_20
    :cond_1d
    :try_start_32
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_38

    goto :goto_28

    :catchall_21
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v8, v21

    move-object/from16 v21, v20

    goto/16 :goto_50

    :goto_27
    :try_start_33
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    if-eqz v4, :cond_1e

    :try_start_34
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_38

    :cond_1e
    if-eqz v3, :cond_1f

    :try_start_35
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_22

    :catchall_22
    :cond_1f
    :try_start_36
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    :goto_28
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_38

    :try_start_37
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_37 .. :try_end_37} :catch_20
    .catchall {:try_start_37 .. :try_end_37} :catchall_2d

    :try_start_38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_38 .. :try_end_38} :catch_1f
    .catchall {:try_start_38 .. :try_end_38} :catchall_2b

    :try_start_39
    const-string v7, "__et"
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2c

    if-nez v4, :cond_20

    :try_start_3a
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v3, v6, v4}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3a .. :try_end_3a} :catch_18
    .catchall {:try_start_3a .. :try_end_3a} :catchall_23

    goto :goto_2b

    :catchall_23
    move-object v4, v3

    :catchall_24
    move-object/from16 v6, v20

    move-object/from16 v8, v21

    :catchall_25
    :goto_29
    move-object v3, v0

    goto/16 :goto_3c

    :catch_18
    move-object v4, v3

    :catch_19
    move-object/from16 v6, v20

    move-object/from16 v8, v21

    :catch_1a
    :goto_2a
    move-object v3, v0

    goto/16 :goto_3d

    :cond_20
    :try_start_3b
    invoke-static {v7, v0, v3, v3, v3}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3b .. :try_end_3b} :catch_1f
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2b

    :goto_2b
    if-eqz v4, :cond_30

    :try_start_3c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    sget-object v7, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    :cond_21
    :goto_2c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3c .. :try_end_3c} :catch_19
    .catchall {:try_start_3c .. :try_end_3c} :catchall_24

    if-eqz v8, :cond_29

    :try_start_3d
    const-string v8, "__t"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v11, "__i"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "__s"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_23

    const-string v13, "-1"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    goto :goto_2e

    :cond_22
    :goto_2d
    const/4 v13, 0x0

    goto :goto_2f

    :catchall_26
    move-object v3, v0

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    goto/16 :goto_3c

    :catch_1b
    move-object v3, v0

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    goto/16 :goto_3d

    :cond_23
    :goto_2e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    move-object v11, v7

    goto :goto_2d

    :goto_2f
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v13, v22

    iget-object v15, v13, Lcom/umeng/analytics/pro/i;->j:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x801

    if-eq v8, v14, :cond_26

    const/16 v14, 0x802

    if-eq v8, v14, :cond_24

    goto :goto_32

    :cond_24
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_28

    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v12}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    goto :goto_30

    :cond_25
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    :goto_30
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_32

    :cond_26
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_28

    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v12}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    goto :goto_31

    :cond_27
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    :goto_31
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3d .. :try_end_3d} :catch_1b
    .catchall {:try_start_3d .. :try_end_3d} :catchall_26

    :cond_28
    :goto_32
    move-object/from16 v22, v13

    goto/16 :goto_2c

    :cond_29
    :try_start_3e
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v7
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3e .. :try_end_3e} :catch_19
    .catchall {:try_start_3e .. :try_end_3e} :catchall_24

    if-lez v7, :cond_2c

    :try_start_3f
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :cond_2a
    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3f .. :try_end_3f} :catch_1d
    .catchall {:try_start_3f .. :try_end_3f} :catchall_28

    if-eqz v11, :cond_2b

    :try_start_40
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v12

    if-lez v12, :cond_2a

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_40 .. :try_end_40} :catch_1b
    .catchall {:try_start_40 .. :try_end_40} :catchall_26

    goto :goto_33

    :cond_2b
    :try_start_41
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_41 .. :try_end_41} :catch_1d
    .catchall {:try_start_41 .. :try_end_41} :catchall_28

    if-lez v3, :cond_2c

    move-object/from16 v8, v21

    :try_start_42
    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_42 .. :try_end_42} :catch_1c
    .catchall {:try_start_42 .. :try_end_42} :catchall_27

    goto :goto_36

    :catchall_27
    :goto_34
    move-object v3, v0

    move-object/from16 v6, v20

    goto/16 :goto_3c

    :catch_1c
    :goto_35
    move-object v3, v0

    move-object/from16 v6, v20

    goto/16 :goto_3d

    :cond_2c
    move-object/from16 v8, v21

    goto :goto_36

    :catchall_28
    move-object/from16 v8, v21

    goto :goto_34

    :catch_1d
    move-object/from16 v8, v21

    goto :goto_35

    :goto_36
    :try_start_43
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2f

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_43 .. :try_end_43} :catch_1e
    .catchall {:try_start_43 .. :try_end_43} :catchall_29

    if-eqz v11, :cond_2e

    :try_start_44
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v12

    if-lez v12, :cond_2d

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_44 .. :try_end_44} :catch_1c
    .catchall {:try_start_44 .. :try_end_44} :catchall_27

    goto :goto_37

    :cond_2e
    :try_start_45
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_45 .. :try_end_45} :catch_1e
    .catchall {:try_start_45 .. :try_end_45} :catchall_29

    if-lez v6, :cond_2f

    move-object/from16 v6, v20

    :try_start_46
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_38

    :cond_2f
    move-object/from16 v6, v20

    goto :goto_38

    :catchall_29
    move-object/from16 v6, v20

    goto/16 :goto_29

    :catch_1e
    move-object/from16 v6, v20

    goto/16 :goto_2a

    :cond_30
    move-object/from16 v6, v20

    move-object/from16 v8, v21

    :goto_38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_46 .. :try_end_46} :catch_1a
    .catchall {:try_start_46 .. :try_end_46} :catchall_25

    if-eqz v4, :cond_31

    :try_start_47
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_36

    :cond_31
    :try_start_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2a

    :catchall_2a
    :try_start_49
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_36

    goto :goto_3e

    :catchall_2b
    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move-object v3, v0

    :goto_39
    const/4 v4, 0x0

    goto :goto_3c

    :catch_1f
    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move-object v3, v0

    :goto_3a
    const/4 v4, 0x0

    goto :goto_3d

    :catchall_2c
    move-object/from16 v8, v21

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    :goto_3b
    move-object/from16 v21, v20

    goto/16 :goto_52

    :catchall_2d
    move-object/from16 v6, v20

    move-object/from16 v8, v21

    const/4 v3, 0x0

    goto :goto_39

    :catch_20
    move-object/from16 v6, v20

    move-object/from16 v8, v21

    const/4 v3, 0x0

    goto :goto_3a

    :goto_3c
    :try_start_4a
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2f

    if-eqz v4, :cond_32

    :try_start_4b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_36

    :cond_32
    if-eqz v3, :cond_33

    :try_start_4c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2e

    :catchall_2e
    :cond_33
    :try_start_4d
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_36

    goto :goto_3e

    :catchall_2f
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    goto/16 :goto_4f

    :goto_3d
    :try_start_4e
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2f

    if-eqz v4, :cond_34

    :try_start_4f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_36

    :cond_34
    if-eqz v3, :cond_35

    :try_start_50
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_30

    :catchall_30
    :cond_35
    :try_start_51
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    :goto_3e
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_36

    :try_start_52
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_3f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_3e

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-nez v11, :cond_36

    if-eqz v12, :cond_36

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_21
    .catchall {:try_start_52 .. :try_end_52} :catchall_31

    goto :goto_40

    :catchall_31
    move-object/from16 v21, v6

    :catchall_32
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    goto/16 :goto_4e

    :catch_21
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    goto/16 :goto_48

    :cond_36
    :goto_40
    const-string v13, "page_start"

    if-eqz v11, :cond_3a

    if-eqz v12, :cond_3a

    :try_start_53
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v0

    const/4 v15, 0x0

    :goto_41
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_37

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_41

    :cond_37
    const/4 v0, 0x0

    :goto_42
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_38

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_38
    new-instance v0, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;-><init>()V

    iput-object v13, v0, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->mCompareKey:Ljava/lang/String;

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_43
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_39

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_43

    :cond_39
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_44

    :cond_3a
    move-object/from16 v20, v0

    :goto_44
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_21
    .catchall {:try_start_53 .. :try_end_53} :catchall_31

    const-string v11, "$page_num"

    if-eqz v0, :cond_3d

    :try_start_54
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v12, 0x0

    :goto_45
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_3c

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3b

    const-string v15, "ts"
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_21
    .catchall {:try_start_54 .. :try_end_54} :catchall_31

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    :try_start_55
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v14, v15, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_46

    :catch_22
    move-exception v0

    goto :goto_48

    :cond_3b
    move-object/from16 v23, v5

    move-object/from16 v21, v6

    :goto_46
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v21

    move-object/from16 v5, v23

    goto :goto_45

    :cond_3c
    move-object/from16 v23, v5

    move-object/from16 v21, v6

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v7, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_47

    :cond_3d
    move-object/from16 v23, v5

    move-object/from16 v21, v6

    const/4 v5, 0x0

    invoke-virtual {v7, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_47
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v6, v21

    move-object/from16 v5, v23

    goto/16 :goto_3f

    :cond_3e
    move-object/from16 v23, v5

    move-object/from16 v21, v6

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_22
    .catchall {:try_start_55 .. :try_end_55} :catchall_32

    goto :goto_49

    :cond_3f
    move-object/from16 v23, v5

    move-object/from16 v21, v6

    goto :goto_49

    :goto_48
    :try_start_56
    const-string v3, "merge pages error"

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_49
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_32

    if-eqz v0, :cond_40

    :try_start_57
    const-string v3, ""
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_34

    move-object/from16 v5, v18

    :try_start_58
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4b

    :catchall_33
    :goto_4a
    move-object/from16 v6, v17

    goto/16 :goto_4e

    :catchall_34
    move-object/from16 v5, v18

    goto :goto_4a

    :cond_40
    move-object/from16 v5, v18

    :cond_41
    :goto_4b
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "provider"

    const/4 v6, 0x0

    aget-object v7, v0, v6

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "puid"

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_33

    if-lez v0, :cond_42

    move-object/from16 v6, v17

    :try_start_59
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4c

    :cond_42
    move-object/from16 v6, v17

    :goto_4c
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iget-boolean v0, v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    if-eqz v0, :cond_44

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v3

    iget-object v3, v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v4

    iget-boolean v7, v4, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    if-nez v7, :cond_43

    move-object/from16 v4, v23

    goto :goto_4d

    :cond_43
    iget v4, v4, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_4d
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "group_info"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_44
    sget-object v0, Lcom/umeng/analytics/pro/r$a;->a:Lcom/umeng/analytics/pro/r;

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_45

    invoke-static {v2, v4}, Lcom/umeng/analytics/pro/r;->a(Lorg/json/JSONObject;Z)V

    invoke-static {v3}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    goto :goto_4e

    :cond_45
    const/4 v4, 0x2

    if-ne v0, v4, :cond_46

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_35

    :try_start_5a
    invoke-static {}, Lcom/umeng/analytics/pro/r;->b()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_23
    .catchall {:try_start_5a .. :try_end_5a} :catchall_35

    :catch_23
    const/4 v4, 0x1

    :try_start_5b
    invoke-static {v2, v4}, Lcom/umeng/analytics/pro/r;->a(Lorg/json/JSONObject;Z)V

    invoke-static {v3}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    goto :goto_4e

    :cond_46
    const/4 v4, 0x3

    const/4 v7, 0x0

    if-ne v0, v4, :cond_47

    invoke-static {v2, v7}, Lcom/umeng/analytics/pro/r;->a(Lorg/json/JSONObject;Z)V

    invoke-static {v3}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v7, v3}, Lcom/umeng/analytics/pro/i;->b(ZZ)V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_35

    :catchall_35
    :cond_47
    :goto_4e
    move-object v15, v2

    goto :goto_53

    :catchall_36
    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    goto :goto_52

    :goto_4f
    if-eqz v4, :cond_48

    :try_start_5c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_3b

    :cond_48
    if-eqz v3, :cond_49

    :try_start_5d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_37

    :catchall_37
    :cond_49
    :try_start_5e
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0

    :catchall_38
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v8, v21

    goto/16 :goto_3b

    :goto_50
    if-eqz v4, :cond_4a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_3b

    :cond_4a
    if-eqz v3, :cond_4b

    :try_start_5f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_39

    :catchall_39
    :cond_4b
    :try_start_60
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0

    :goto_51
    if-eqz v12, :cond_4c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_3b

    :cond_4c
    if-eqz v30, :cond_4d

    :try_start_61
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_3a

    :catchall_3a
    :cond_4d
    :try_start_62
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_3b

    :catchall_3b
    :goto_52
    const/4 v2, 0x0

    goto :goto_4e

    :catchall_3c
    move-object/from16 v21, v3

    move-object/from16 v31, v6

    move-object/from16 v19, v8

    move-object v1, v11

    move-object v6, v12

    move-object v5, v13

    move-object v8, v4

    goto :goto_52

    :goto_53
    sget-object v0, Lcom/umeng/analytics/pro/r$a;->a:Lcom/umeng/analytics/pro/r;

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_4e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_59

    const/4 v3, 0x0

    return-object v3

    :cond_4e
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_50

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4f

    if-eq v0, v2, :cond_4f

    return-object v3

    :cond_4f
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    if-eq v0, v2, :cond_51

    return-object v3

    :cond_50
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_51

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_51

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    if-eq v0, v2, :cond_51

    return-object v3

    :cond_51
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_54
    if-ge v13, v2, :cond_58

    :try_start_63
    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "$$_onUMengEnterBackground"

    const-string v9, "$$_onUMengEnterForegroundInitError"

    const-string v10, "$$_onUMengEnterForeground"

    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_3f

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_56
    if-ge v9, v7, :cond_54

    :try_start_64
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_3d

    if-eqz v11, :cond_52

    move-object/from16 v12, v31

    :try_start_65
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_3e

    if-eqz v11, :cond_53

    add-int/lit8 v10, v10, 0x1

    goto :goto_57

    :catchall_3d
    :cond_52
    move-object/from16 v12, v31

    :catchall_3e
    :cond_53
    :goto_57
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v31, v12

    goto :goto_56

    :cond_54
    move-object/from16 v12, v31

    if-lt v10, v7, :cond_56

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_55
    move-object/from16 v12, v31

    :cond_56
    :goto_58
    move-object/from16 v31, v12

    goto :goto_55

    :catchall_3f
    :cond_57
    move-object/from16 v12, v31

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v31, v12

    goto :goto_54

    :cond_58
    if-lt v3, v2, :cond_59

    const/4 v1, 0x0

    return-object v1

    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/umeng/analytics/pro/o;->l()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/analytics/pro/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "version_code"

    const-string v4, "app_version"

    if-nez v2, :cond_64

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/analytics/pro/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const-string v6, "__av"

    const-string v7, "__vc"

    if-eqz v5, :cond_5a

    const/4 v10, 0x0

    goto/16 :goto_5f

    :cond_5a
    :try_start_66
    sget-object v5, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_66 .. :try_end_66} :catch_27
    .catchall {:try_start_66 .. :try_end_66} :catchall_44

    :try_start_67
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "__ii=? "

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_67 .. :try_end_67} :catch_26
    .catchall {:try_start_67 .. :try_end_67} :catchall_43

    move-object/from16 v9, v19

    const/4 v10, 0x0

    :try_start_68
    invoke-static {v9, v5, v10, v8, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_68 .. :try_end_68} :catch_25
    .catchall {:try_start_68 .. :try_end_68} :catchall_42

    if-eqz v2, :cond_5b

    :try_start_69
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_69 .. :try_end_69} :catch_28
    .catchall {:try_start_69 .. :try_end_69} :catchall_45

    :try_start_6a
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_59

    :catchall_40
    move-object v10, v8

    goto :goto_5c

    :catch_24
    move-object v10, v8

    goto :goto_5e

    :cond_5b
    move-object v8, v10

    :goto_59
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6a .. :try_end_6a} :catch_24
    .catchall {:try_start_6a .. :try_end_6a} :catchall_40

    if-eqz v2, :cond_5c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5c
    :try_start_6b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_41

    :catchall_41
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/g;->b()V

    move-object v10, v8

    goto :goto_5f

    :catchall_42
    :goto_5a
    move-object v2, v10

    goto :goto_5c

    :catch_25
    :goto_5b
    move-object v2, v10

    goto :goto_5e

    :catchall_43
    const/4 v10, 0x0

    goto :goto_5a

    :catch_26
    const/4 v10, 0x0

    goto :goto_5b

    :catchall_44
    const/4 v10, 0x0

    move-object v2, v10

    move-object v5, v2

    goto :goto_5c

    :catch_27
    const/4 v10, 0x0

    move-object v2, v10

    move-object v5, v2

    goto :goto_5e

    :catchall_45
    :goto_5c
    if-eqz v2, :cond_5d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5d
    if-eqz v5, :cond_5e

    :goto_5d
    :try_start_6c
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_46

    :catchall_46
    :cond_5e
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_5f

    :catch_28
    :goto_5e
    :try_start_6d
    sget-object v8, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_47

    if-eqz v2, :cond_5f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5f
    if-eqz v5, :cond_5e

    goto :goto_5d

    :goto_5f
    if-eqz v10, :cond_65

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_6e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_60

    :cond_60
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_61

    :cond_61
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_49

    goto :goto_61

    :catchall_47
    move-exception v0

    if-eqz v2, :cond_62

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_62
    if-eqz v5, :cond_63

    :try_start_6f
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_48

    :catchall_48
    :cond_63
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0

    :cond_64
    :try_start_70
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_49

    :catchall_49
    :cond_65
    :goto_61
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_71
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_4a

    const-string v4, "analytics"

    const/4 v5, 0x3

    if-ne v0, v5, :cond_66

    :try_start_72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_62

    :cond_66
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_67

    invoke-virtual {v3, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_67
    :goto_62
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_4a

    const-string v4, "header"

    if-lez v0, :cond_68

    :try_start_73
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_68
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_69

    const-string v0, "content"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_69
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    move-wide/from16 v5, p1

    cmp-long v0, v0, v5

    if-lez v0, :cond_6a

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v7, v3

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0, v5, v6, v2}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_4a

    :catchall_4a
    :cond_6a
    return-object v2
.end method

.method public final a(Z)V
    .locals 4

    invoke-static {}, Lcom/umeng/analytics/pro/o;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/umeng/analytics/pro/o$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/o$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/o$c;->a()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v0, Lcom/umeng/analytics/pro/o$c;->b:I

    aget v2, v2, v1

    iput v2, v0, Lcom/umeng/analytics/pro/o$c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v3, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->p()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d$1()V

    :cond_4
    instance-of v3, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->p()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d$1()V

    :cond_5
    sget-boolean v3, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Data Send Strategy: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_9

    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    const-string v2, "MobclickRT"

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    const-string p1, "--->>> send session start in policy ReportQuasiRealtime."

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->j()V

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "--->>> send normal data in policy ReportQuasiRealtime."

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->j()V

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "--->>> constructMessage()"

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->j()V

    :cond_9
    :goto_1
    return-void
.end method

.method public final a(IJ)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/32 p2, 0x1b77400

    cmp-long p2, v2, p2

    const/4 p3, 0x0

    if-lez p2, :cond_0

    :try_start_0
    iput p3, p0, Lcom/umeng/analytics/pro/o;->i:I

    iput p3, p0, Lcom/umeng/analytics/pro/o;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/umeng/analytics/pro/o;->k:J

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "dstk_cnt"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1

    :cond_0
    const/16 p0, 0x1388

    if-ge p1, p0, :cond_1

    return v1

    :cond_1
    return p3

    :cond_2
    return v1
.end method

.method public final a$1(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->i()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->d()V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final d(Z)Z
    .locals 9

    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/umeng/analytics/pro/o$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/o$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    :cond_0
    iget-object p0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object p0

    instance-of v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    check-cast p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    iget p0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    const-wide/16 v4, 0x0

    if-eq p0, v1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    move-wide p0, v4

    goto :goto_0

    :cond_1
    const-wide/32 p0, 0x5265c00

    goto :goto_0

    :cond_2
    const-wide/32 p0, 0x1b77400

    goto :goto_0

    :cond_3
    const-wide/32 p0, 0xdbba00

    :goto_0
    sget-object v6, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "last_instant_build_time"

    invoke-interface {v6, v8, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    monitor-exit v7

    :goto_1
    sub-long/2addr v2, v4

    cmp-long p0, v2, p0

    if-ltz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    return v1

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p0

    return p0

    :cond_7
    return v1
.end method

.method public final d$1()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** flushMemoryData: event flushed to DB."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONArray;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lcom/umeng/analytics/pro/o;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lcom/umeng/analytics/pro/o;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget p0, p0, Lcom/umeng/analytics/pro/o;->j:I

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "__t"

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x802

    if-ne v2, v1, :cond_1

    iget-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/o;->i:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/umeng/analytics/pro/o;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/o;->i:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x801

    if-ne v1, v0, :cond_3

    iget-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/o;->j:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    :cond_3
    :goto_0
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONArray;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/pro/o;->f:I

    if-lt v0, v1, :cond_6

    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** more than 10 events, flushing to DB."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONArray;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    :cond_6
    iget-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    :cond_7
    iget-object p0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 9

    const-string v0, "--->>> onProfileSignIn: force generate new session: session id = "

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d$1()V

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "provider"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    aget-object v6, p1, v5

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v6, "session_start_time"

    invoke-interface {p1, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/umeng/analytics/pro/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v6, v2, v3, v5}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;JZ)Z

    move-result v6

    sget-object v7, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    sget-object v8, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    aput-object p0, v8, v5

    aput-object v1, v8, v4

    if-eqz v7, :cond_3

    invoke-static {v7}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/umeng/common/b;->e()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "au_p"

    invoke-interface {v5, v7, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "au_u"

    invoke-interface {v5, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    const-string p0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0, v2, v3, v4}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;JZ)V

    if-eqz v6, :cond_4

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 27

    const-string v0, "__is"

    const-string v1, "exception"

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-string v4, "start_time"

    const-string v5, "id"

    const-string v6, "_$pp"

    const-string v7, "_$sp"

    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v8

    sget-object v9, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v11, "content"

    const-string v12, "analytics"

    const-string v13, "version_code"

    const-string v15, "active_user"

    const-string v9, "sessions"

    const-string v14, "MobclickRT"

    const-string v10, "header"

    if-eqz v8, :cond_0

    move-object/from16 v17, v1

    move-object v0, v10

    move-object v1, v11

    move-object v3, v12

    move-object/from16 v24, v13

    move-object v6, v14

    :goto_0
    const/4 v5, 0x0

    const/4 v10, 0x0

    goto/16 :goto_21

    :cond_0
    sget-object v8, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v18, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v18
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v19, v14

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-wide/from16 v20, v2

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v0, v14, v2, v2, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v3, :cond_5

    :try_start_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v18, :cond_4

    move-object/from16 v18, v11

    :try_start_5
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v22, v10

    :try_start_6
    const-string v10, "__e"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v23, v12

    :try_start_7
    const-string v12, "__ii"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v24, v13

    :try_start_8
    iget-object v13, v8, Lcom/umeng/analytics/pro/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v13, "__sp"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v25, v8

    const-string v8, "__pp"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v26, :cond_1

    move-object/from16 v26, v0

    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v13}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    move-object/from16 v26, v0

    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v8}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    move-object/from16 v11, v18

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v8, v25

    move-object/from16 v0, v26

    goto/16 :goto_1

    :catchall_0
    move-object/from16 v26, v0

    goto/16 :goto_d

    :catch_0
    move-object/from16 v26, v0

    goto/16 :goto_e

    :catchall_1
    move-object/from16 v26, v0

    :goto_3
    move-object/from16 v24, v13

    goto/16 :goto_d

    :catch_1
    move-object/from16 v26, v0

    :goto_4
    move-object/from16 v24, v13

    goto/16 :goto_e

    :catchall_2
    move-object/from16 v26, v0

    :goto_5
    move-object/from16 v23, v12

    goto :goto_3

    :catch_2
    move-object/from16 v26, v0

    :goto_6
    move-object/from16 v23, v12

    goto :goto_4

    :catchall_3
    move-object/from16 v26, v0

    move-object/from16 v22, v10

    goto :goto_5

    :catch_3
    move-object/from16 v26, v0

    move-object/from16 v22, v10

    goto :goto_6

    :cond_4
    move-object/from16 v26, v0

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :catchall_4
    move-object/from16 v26, v0

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    goto :goto_5

    :catch_4
    move-object/from16 v26, v0

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    goto :goto_6

    :cond_5
    move-object/from16 v26, v0

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    :cond_6
    :goto_7
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_8
    :try_start_a
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    :cond_8
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    goto/16 :goto_f

    :catchall_6
    move-object/from16 v26, v0

    :goto_9
    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    const/4 v3, 0x0

    goto/16 :goto_d

    :catch_5
    move-object/from16 v26, v0

    :goto_a
    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    const/4 v3, 0x0

    goto/16 :goto_e

    :catchall_7
    move-object/from16 v26, v0

    move-wide/from16 v20, v2

    goto :goto_9

    :catch_6
    move-object/from16 v26, v0

    move-wide/from16 v20, v2

    goto :goto_a

    :catchall_8
    move-object/from16 v26, v0

    move-wide/from16 v20, v2

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    :goto_b
    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_d

    :catch_7
    move-object/from16 v26, v0

    move-wide/from16 v20, v2

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    :goto_c
    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_e

    :catchall_9
    move-object/from16 v26, v0

    move-wide/from16 v20, v2

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v19, v14

    goto :goto_b

    :catch_8
    move-object/from16 v26, v0

    move-wide/from16 v20, v2

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v19, v14

    goto :goto_c

    :catchall_a
    :goto_d
    :try_start_b
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v14, :cond_8

    goto :goto_8

    :catchall_b
    move-exception v0

    goto/16 :goto_27

    :catch_9
    :goto_e
    :try_start_c
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v14, :cond_8

    goto/16 :goto_8

    :goto_f
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    aget-object v8, v0, v3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v8, "provider"

    aget-object v10, v0, v2

    invoke-virtual {v3, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "puid"

    const/4 v8, 0x1

    aget-object v0, v0, v8

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v1, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :catchall_c
    :cond_b
    sget-object v0, Lcom/umeng/analytics/pro/r$a;->a:Lcom/umeng/analytics/pro/r;

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x3

    const/4 v8, 0x1

    if-ne v2, v8, :cond_c

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c

    if-eq v0, v3, :cond_c

    :goto_10
    move-object/from16 v1, v18

    move-object/from16 v6, v19

    move-object/from16 v0, v22

    move-object/from16 v3, v23

    goto/16 :goto_0

    :cond_c
    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v10

    if-ne v10, v8, :cond_11

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :try_start_e
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v5, :cond_10

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :catch_a
    :cond_10
    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    goto :goto_12

    :cond_11
    const/4 v6, 0x2

    if-ne v10, v6, :cond_14

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_13
    :try_start_f
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    :catch_b
    :try_start_11
    invoke-virtual {v1, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :catch_c
    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    goto :goto_12

    :cond_14
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v10, v3, :cond_16

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    :cond_16
    :goto_12
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_17

    if-eq v0, v3, :cond_17

    goto/16 :goto_10

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/umeng/analytics/pro/o;->l()Lorg/json/JSONObject;

    move-result-object v2

    :try_start_12
    const-string v4, "st"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    :catchall_d
    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v4

    iget-object v4, v4, Lcom/umeng/analytics/pro/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v4

    iget-object v4, v4, Lcom/umeng/analytics/pro/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const-string v6, "__av"

    const-string v7, "__vc"

    if-eqz v5, :cond_18

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_19

    :cond_18
    :try_start_13
    sget-object v5, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    :try_start_14
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "__ii=? "

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    move-object/from16 v11, v26

    const/4 v10, 0x0

    :try_start_15
    invoke-static {v11, v5, v10, v8, v4}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    if-eqz v4, :cond_19

    :try_start_16
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_19

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :try_start_17
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13

    :catchall_e
    move-object v8, v10

    goto :goto_17

    :catch_d
    move-object v8, v10

    goto :goto_18

    :cond_19
    move-object v8, v10

    :goto_13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1a
    :goto_14
    :try_start_18
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :catchall_f
    :cond_1b
    sget-object v4, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_19

    :catchall_10
    :goto_15
    move-object v4, v10

    move-object v8, v4

    goto :goto_17

    :catch_e
    :goto_16
    move-object v4, v10

    move-object v8, v4

    goto :goto_18

    :catchall_11
    const/4 v10, 0x0

    goto :goto_15

    :catch_f
    const/4 v10, 0x0

    goto :goto_16

    :catchall_12
    const/4 v10, 0x0

    move-object v4, v10

    move-object v5, v4

    move-object v8, v5

    goto :goto_17

    :catch_10
    const/4 v10, 0x0

    move-object v4, v10

    move-object v5, v4

    move-object v8, v5

    goto :goto_18

    :catchall_13
    :goto_17
    if-eqz v4, :cond_1c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1c
    if-eqz v5, :cond_1b

    goto :goto_14

    :catch_11
    :goto_18
    :try_start_19
    sget-object v11, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v11}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    if-eqz v4, :cond_1d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1d
    if-eqz v5, :cond_1b

    goto :goto_14

    :goto_19
    if-eqz v8, :cond_23

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_1a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_16

    const-string v7, "app_version"

    if-eqz v6, :cond_1e

    :try_start_1b
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    :cond_1e
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static/range {v24 .. v24}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b

    :cond_1f
    invoke-static/range {v24 .. v24}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    goto :goto_1b

    :catchall_14
    move-exception v0

    if-eqz v4, :cond_20

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_20
    if-eqz v5, :cond_21

    :try_start_1c
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    :catchall_15
    :cond_21
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0

    :cond_22
    const/4 v10, 0x0

    :catchall_16
    :cond_23
    :goto_1b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-ne v0, v3, :cond_24

    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_18

    move-object/from16 v3, v23

    :try_start_1e
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d

    :catchall_17
    :goto_1c
    move-object/from16 v1, v18

    move-object/from16 v6, v19

    move-object/from16 v0, v22

    goto/16 :goto_20

    :catchall_18
    move-object/from16 v3, v23

    goto :goto_1c

    :cond_24
    move-object/from16 v3, v23

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_25

    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_25
    :goto_1d
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_17

    if-lez v0, :cond_26

    move-object/from16 v0, v22

    :try_start_1f
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1e

    :catchall_19
    move-object/from16 v1, v18

    :catchall_1a
    move-object/from16 v6, v19

    goto :goto_20

    :cond_26
    move-object/from16 v0, v22

    :goto_1e
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_19

    if-lez v1, :cond_27

    move-object/from16 v1, v18

    :try_start_20
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1a

    goto :goto_1f

    :cond_27
    move-object/from16 v1, v18

    :goto_1f
    :try_start_21
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1d

    int-to-long v5, v2

    cmp-long v2, v5, v20

    if-lez v2, :cond_28

    :try_start_22
    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1c

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_23
    invoke-virtual {v2, v4, v5}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/analytics/pro/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, "--->>> Instant session packet overload !!! "
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1b

    move-object/from16 v6, v19

    :try_start_24
    invoke-static {v6, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1e

    goto :goto_21

    :catchall_1b
    move-object/from16 v6, v19

    goto :goto_21

    :catchall_1c
    move-object/from16 v6, v19

    const/4 v5, 0x0

    goto :goto_21

    :catchall_1d
    :cond_28
    move-object/from16 v6, v19

    :goto_20
    const/4 v5, 0x0

    move-object v10, v4

    :catchall_1e
    :goto_21
    if-eqz v10, :cond_3a

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_29

    goto/16 :goto_26

    :cond_29
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v4, :cond_3a

    if-eqz v2, :cond_3a

    if-eqz v1, :cond_3a

    const-string v4, "--->>> constructInstantMessage: request build envelope."

    invoke-static {v6, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3a

    move-object/from16 v2, v17

    :try_start_25
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build envelope error code: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1f

    :catchall_1f
    :cond_2a
    sget-boolean v4, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v4, :cond_37

    const-string v4, "channel"

    const-string v6, "appkey"

    const-string v7, "device_model"

    const-string v8, "device_id"

    const-string v10, "sdk_version"

    :try_start_26
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-gtz v11, :cond_2b

    goto/16 :goto_25

    :cond_2b
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2f

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    move v14, v5

    :goto_22
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v14, v5, :cond_2d

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v16

    if-lez v16, :cond_2c

    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_23

    :catchall_20
    move-exception v0

    goto/16 :goto_24

    :cond_2c
    :goto_23
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    :cond_2d
    invoke-virtual {v11, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This Launch Session:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :cond_2e
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v11, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This Launch Account:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :cond_2f
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_36

    invoke-static {v10}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-static {v10}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    invoke-static {v8}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v8}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_32
    invoke-static/range {v24 .. v24}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "version"

    invoke-static/range {v24 .. v24}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_33
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_34
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This Launch Basic Info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :cond_36
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_20

    goto :goto_25

    :goto_24
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_37
    :goto_25
    :try_start_27
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3a

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x65

    if-ne v2, v0, :cond_38

    goto :goto_26

    :cond_38
    invoke-static {v1}, Lcom/umeng/analytics/pro/o;->f(Lorg/json/JSONObject;)V

    goto :goto_26

    :cond_39
    invoke-static {v1}, Lcom/umeng/analytics/pro/o;->f(Lorg/json/JSONObject;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_21

    :catchall_21
    :cond_3a
    :goto_26
    return-void

    :goto_27
    if-eqz v3, :cond_3b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3b
    if-eqz v14, :cond_3c

    :try_start_28
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_22

    :catchall_22
    :cond_3c
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0
.end method

.method public final j()V
    .locals 24

    const-string v0, "exception"

    const-string v1, "Build envelope error code: "

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v2

    move-object/from16 v4, p0

    invoke-virtual {v4, v2, v3}, Lcom/umeng/analytics/pro/o;->a(J)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v3, "header"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "content"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v5, :cond_1a

    if-eqz v4, :cond_1a

    if-eqz v2, :cond_1a

    invoke-static {v5, v4, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1a

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MobclickRT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_19

    const-string v0, "version_code"

    const-string v1, "autopages"

    const-string v4, "analytics"

    const-string v5, "channel"

    const-string v6, "appkey"

    const-string v7, "device_model"

    const-string v8, "device_id"

    const-string v9, "sdk_version"

    const-string v10, "dplus"

    const-string v11, "active_user"

    const-string v12, "activate_msg"

    const-string v13, "sessions"

    const-string v14, "error"

    const-string v15, "gkv"

    move-object/from16 p0, v5

    const-string v5, "ekv"

    move-object/from16 v16, v6

    const-string v6, "Error:"

    move-object/from16 v17, v0

    const-string v0, "[Tracking Validation Mode] Error:"

    move-object/from16 v18, v7

    const-string v7, "Game Event:"

    move-object/from16 v19, v8

    const-string v8, "[Tracking Validation Mode] Game Event:"

    move-object/from16 v20, v9

    const-string v9, "Event:"

    move-object/from16 v21, v3

    const-string v3, "[Tracking Validation Mode] Event:"

    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v22

    if-gtz v22, :cond_2

    goto/16 :goto_7

    :cond_2
    move-object/from16 v22, v10

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v23, v11

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :goto_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :goto_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :cond_6
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v10, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :goto_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :cond_8
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_b

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_a

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {v10, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Tracking Validation Mode] Session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :goto_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v10, v0

    :cond_d
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Tracking Validation Mode] Account:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :goto_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :cond_10
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    invoke-static/range {v21 .. v21}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static/range {v21 .. v21}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_18

    invoke-static/range {v20 .. v20}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static/range {v20 .. v20}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-virtual {v10, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    invoke-static/range {v19 .. v19}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static/range {v19 .. v19}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-virtual {v10, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    invoke-static/range {v18 .. v18}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static/range {v18 .. v18}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-virtual {v10, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    invoke-static/range {v17 .. v17}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "version"

    invoke-static/range {v17 .. v17}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_15
    invoke-static/range {v16 .. v16}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static/range {v16 .. v16}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-virtual {v10, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16
    invoke-static/range {p0 .. p0}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static/range {p0 .. p0}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :cond_18
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :goto_6
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    :goto_7
    invoke-static {v2}, Lcom/umeng/analytics/pro/o;->a(Lorg/json/JSONObject;)V

    :cond_1a
    :goto_8
    return-void
.end method

.method public final l()Lorg/json/JSONObject;
    .locals 11

    const-string v0, "vers_name"

    const-string v1, "$ud_da"

    const-string v2, "$pr_ve"

    const-string v3, ""

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v5

    const-string v6, "vertical_type"

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const-string v7, "sdk_version"

    const-string v8, "9.6.4"

    if-ne v5, v6, :cond_1

    :try_start_1
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getGameSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v5

    :goto_0
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "secret"

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v6, "pr_ve"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v8, "ekv_bl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "$ekv_bl_ver"

    if-eqz v8, :cond_3

    :try_start_2
    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    :goto_2
    sget-object v7, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v8, "ekv_wl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "$ekv_wl_ver"

    if-eqz v8, :cond_5

    :try_start_3
    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_5
    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    :goto_3
    const-string v7, "pro_ver"

    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1.0.0"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->s()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "atm"

    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ana_is_f"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v7, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_9

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "vers_date"

    const-string v8, "vers_pre_version"

    if-eqz v5, :cond_8

    :try_start_4
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "pre_version"

    invoke-interface {v2, v5, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "cur_version"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pre_date"

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "vers_code"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_5
    return-object v4
.end method

.method public final m()Ljava/lang/String;
    .locals 8

    const-string v0, "0"

    const-string v1, ""

    const-string v2, "pre_version"

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v5, "pr_ve"

    invoke-static {v4, v5, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v4, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    if-nez v4, :cond_1

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v4, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "cur_version"

    if-eqz v6, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0

    :catchall_0
    :cond_4
    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 7

    const-string v0, "pre_date"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v3, "ud_da"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "yyyy-MM-dd"

    if-eqz v3, :cond_3

    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    :catchall_0
    :cond_4
    :goto_0
    iput-object v1, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    return-object v1
.end method

.method public final p()Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "__i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :catchall_0
    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final q()V
    .locals 7

    const-string v0, "__i"

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "-1"

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    sget-object v4, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    :cond_5
    return-void
.end method
