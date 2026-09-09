.class public final Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioManager$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final gestureListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

.field public final isDraggingProvider:Lkotlin/jvm/functions/Function0;

.field public final lastDragAtProvider:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$1;Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;)V
    .locals 1

    const-string v0, "isDraggingProvider"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lastDragAtProvider"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->isDraggingProvider:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->lastDragAtProvider:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler$audioManager$2;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler$audioManager$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->audioManager$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->gestureListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    return-void
.end method

.method public static final access$handleGesture(Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;Ljava/lang/String;)Z
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "single_tap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "double_tap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "long_press"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->isDraggingProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->lastDragAtProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallGestureActions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallTouchSoundEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->audioManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_6
    :goto_1
    sget-object p0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v11, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    sget-object v4, Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v9, 0xe5

    const/4 v10, 0x0

    const/4 v1, 0x0

    const-string v2, "FloatingBallGesture"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/deepalhome/launcher/task/model/ScheduledTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v11}, Lcom/deepalhome/launcher/task/TaskExecutor;->execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    const/4 v1, 0x1

    :cond_7
    :goto_2
    return v1
.end method
