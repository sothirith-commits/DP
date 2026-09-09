.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$carInfoChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_GEAR:J

    invoke-static {p1, v0, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->equalsId(Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->parseGear(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getLastGear$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->notifyGearChanged(I)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setLastGear$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
