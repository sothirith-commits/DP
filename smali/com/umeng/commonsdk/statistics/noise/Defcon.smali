.class public final Lcom/umeng/commonsdk/statistics/noise/Defcon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field public static instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;


# instance fields
.field public mLevel:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/Defcon;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    if-nez v1, :cond_0

    new-instance v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    const-string v1, "defcon"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p0, :cond_0

    const/4 v2, 0x3

    if-gt p0, v2, :cond_0

    iput p0, v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "defcon"

    invoke-virtual {p1, v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    :cond_0
    return-void
.end method
