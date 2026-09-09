.class public final Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$1;
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

.field final synthetic $progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$1;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$1;->$actions:Ljava/util/List;

    iput p3, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$1;->$index:I

    iput-object p4, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$1;->$executingTaskIds:Ljava/util/Set;

    iput-boolean p5, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$1;->$allowForegroundBack:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$1;->$onComplete:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke()Ljava/lang/Object;
.end method
