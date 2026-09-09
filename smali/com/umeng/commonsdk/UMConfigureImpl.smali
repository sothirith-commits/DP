.class public final Lcom/umeng/commonsdk/UMConfigureImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static c:I

.field public static d:Z

.field public static f:Ljava/util/concurrent/ScheduledExecutorService;

.field public static h:I

.field public static final i:Lcom/umeng/commonsdk/UMConfigureImpl$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/umeng/analytics/pro/at;->D:Ljava/util/HashMap;

    sget-object v0, Lcom/umeng/analytics/pro/at$a;->a:Lcom/umeng/analytics/pro/at;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dtfn"

    invoke-static {v0}, Lcom/umeng/analytics/pro/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    sput v0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    new-instance v0, Lcom/umeng/commonsdk/UMConfigureImpl$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/UMConfigureImpl$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->i:Lcom/umeng/commonsdk/UMConfigureImpl$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
