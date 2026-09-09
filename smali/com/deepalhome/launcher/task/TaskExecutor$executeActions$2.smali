.class public final Lcom/deepalhome/launcher/task/TaskExecutor$executeActions$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $allowForegroundBack:Z

.field final synthetic $executingTaskIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $index:I

.field final synthetic $onComplete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $task:Lcom/deepalhome/launcher/task/model/ScheduledTask;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/deepalhome/launcher/task/model/ScheduledTask;Ljava/util/List;IZLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeActions$2;->$executingTaskIds:Ljava/util/Set;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeActions$2;->$task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    iput-object p3, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeActions$2;->$actions:Ljava/util/List;

    iput p4, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeActions$2;->$index:I

    iput-boolean p5, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeActions$2;->$allowForegroundBack:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeActions$2;->$onComplete:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke()Ljava/lang/Object;
.end method
