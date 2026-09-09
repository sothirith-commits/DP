.class public final Lcom/deepalhome/launcher/task/SceneActionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/SceneActionExecutor;

.field public static final defaultTargetComponent:Landroid/content/ComponentName;

.field public static final handler:Landroid/os/Handler;

.field public static final scheduledActions:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/task/SceneActionExecutor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/SceneActionExecutor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneActionExecutor;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mega.assist.vui"

    const-string v2, "com.mega.assist.vui.MarsActionClientService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneActionExecutor;->defaultTargetComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneActionExecutor;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneActionExecutor;->scheduledActions:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native sendSceneAction(Lcom/deepalhome/launcher/task/SceneWordSpec;)V
.end method
