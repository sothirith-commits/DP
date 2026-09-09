.class public final Lcom/deepalhome/launcher/adb/AdbUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/adb/AdbUtil;

.field public static final checkConnectionTask:Lcom/deepalhome/launcher/adb/AdbUtil$checkConnectionTask$1;

.field public static isConnected:Z

.field public static isPollingStarted:Z

.field public static onConnectionChangedListener:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/adb/AdbUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/adb/AdbUtil;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbUtil;

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbUtil$checkConnectionTask$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/adb/AdbUtil$checkConnectionTask$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/adb/AdbUtil;->checkConnectionTask:Lcom/deepalhome/launcher/adb/AdbUtil$checkConnectionTask$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(ILkotlin/jvm/functions/Function1;)V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbUtil$connect$1;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/adb/AdbUtil$connect$1;-><init>(ILkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static execute(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "; exit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method
