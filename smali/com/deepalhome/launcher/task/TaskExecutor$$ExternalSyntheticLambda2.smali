.class public final synthetic Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p6, p0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
