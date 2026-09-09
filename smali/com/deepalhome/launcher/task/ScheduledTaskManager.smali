.class public final Lcom/deepalhome/launcher/task/ScheduledTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

.field private static initialized:Z

.field private static isExecuting:Z

.field private static final taskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/deepalhome/launcher/task/model/ScheduledTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->taskQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$executeNext(Lcom/deepalhome/launcher/task/ScheduledTaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->executeNext()V

    return-void
.end method

.method public static final synthetic access$onTrigger(Lcom/deepalhome/launcher/task/ScheduledTaskManager;Lcom/deepalhome/launcher/task/model/TaskTrigger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->onTrigger(Lcom/deepalhome/launcher/task/model/TaskTrigger;)V

    return-void
.end method

.method private final native autoEnableDefaultTaskIfNeeded()V
.end method

.method private final native containsActionInternal(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/util/Set;)Z
.end method

.method private final native executeNext()V
.end method

.method private final native isAutoVolumeBySpeedEnabled(Ljava/util/List;)Z
.end method

.method private final native isSpeedVolumeTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)Z
.end method

.method private final native matchesTrigger(Lcom/deepalhome/launcher/task/model/TaskTrigger;Lcom/deepalhome/launcher/task/model/TaskTrigger;)Z
.end method

.method private final native migrateOldConfig()V
.end method

.method private final native normalizeTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)Lcom/deepalhome/launcher/task/model/ScheduledTask;
.end method

.method private final native normalizeTaskConstraints()V
.end method

.method private final native onTrigger(Lcom/deepalhome/launcher/task/model/TaskTrigger;)V
.end method

.method private final native removeInvalidTasks()V
.end method

.method private final native syncRuntimeState()V
.end method


# virtual methods
.method public final native addTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V
.end method

.method public final native canShareTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)Z
.end method

.method public final native containsAction(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
.end method

.method public final native getTask(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ScheduledTask;
.end method

.method public final native getTaskNameOrFallback(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native getTasks()Ljava/util/List;
.end method

.method public final native getTriggerlessTask(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ScheduledTask;
.end method

.method public final native getTriggerlessTaskNameOrFallback(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native getTriggerlessTasks()Ljava/util/List;
.end method

.method public final native init()V
.end method

.method public final native isTriggerlessTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)Z
.end method

.method public final native notifyDesktopLaunched()V
.end method

.method public final native notifyGearChanged(I)V
.end method

.method public final native notifyMapCardOpenMap()V
.end method

.method public final native removeTask(Ljava/lang/String;)V
.end method

.method public final native toggleAutoVolumeBySpeed()Z
.end method

.method public final native updateTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V
.end method
