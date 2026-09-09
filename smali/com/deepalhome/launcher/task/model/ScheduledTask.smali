.class public final Lcom/deepalhome/launcher/task/model/ScheduledTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/ScheduledTask$WhenMappings;
    }
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;"
        }
    .end annotation
.end field

.field private conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private final id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private shareCode:Ljava/lang/String;

.field private trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger;",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;",
            "Lcom/deepalhome/launcher/task/model/ConditionLogic;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "trigger"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "actions"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    iput-object p4, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    iput-object p5, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    iput-object p6, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    iput-object p7, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    iput-object p8, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    move-object v3, p0

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v11}, Lcom/deepalhome/launcher/task/model/ScheduledTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;)V

    return-void
.end method

.method private final checkCondition(Lcom/deepalhome/launcher/task/model/TaskCondition;Lcom/deepalhome/launcher/task/model/ConditionContext;)Z
    .locals 3

    instance-of p0, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto/16 :goto_5

    :cond_0
    instance-of p0, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, p2

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartHour()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartMinute()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndHour()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndMinute()I

    move-result p1

    add-int/2addr p1, p2

    if-gt v2, p1, :cond_2

    if-gt v2, p0, :cond_b

    if-gt p0, p1, :cond_b

    :cond_1
    :goto_0
    move v0, v1

    goto/16 :goto_5

    :cond_2
    if-ge p0, v2, :cond_1

    if-gt p0, p1, :cond_b

    goto :goto_0

    :cond_3
    instance-of p0, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    if-eqz p0, :cond_9

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/ConditionContext;->getCurrentSpeed()I

    move-result p0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMinSpeed()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-lt p0, p2, :cond_5

    goto :goto_1

    :cond_5
    move p2, v0

    goto :goto_2

    :cond_6
    :goto_1
    move p2, v1

    :goto_2
    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMaxSpeed()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_7

    goto :goto_3

    :cond_7
    move p0, v0

    goto :goto_4

    :cond_8
    :goto_3
    move p0, v1

    :goto_4
    if-eqz p2, :cond_b

    if-eqz p0, :cond_b

    goto :goto_0

    :cond_9
    instance-of p0, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    if-eqz p0, :cond_a

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected()Z

    move-result p0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;->isConnected()Z

    move-result p1

    if-ne p0, p1, :cond_b

    goto :goto_0

    :cond_a
    instance-of p0, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    if-eqz p0, :cond_c

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress()Z

    move-result p0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress()Z

    move-result p1

    if-ne p0, p1, :cond_b

    goto :goto_0

    :cond_b
    :goto_5
    return v0

    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/ScheduledTask;Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/ScheduledTask;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->copy(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ScheduledTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final areConditionsSatisfied(Lcom/deepalhome/launcher/task/model/ConditionContext;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/task/model/TaskCondition;

    invoke-direct {p0, v3, p1}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->checkCondition(Lcom/deepalhome/launcher/task/model/TaskCondition;Lcom/deepalhome/launcher/task/model/ConditionContext;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    if-nez p0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    :cond_2
    sget-object p1, Lcom/deepalhome/launcher/task/model/ScheduledTask$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x0

    if-eq p0, v1, :cond_7

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_1
    move v1, p1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_a
    :goto_2
    return v1
.end method

.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    return p0
.end method

.method public final component4()Lcom/deepalhome/launcher/task/model/TaskTrigger;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    return-object p0
.end method

.method public final component7()Lcom/deepalhome/launcher/task/model/ConditionLogic;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ScheduledTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger;",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;",
            "Lcom/deepalhome/launcher/task/model/ConditionLogic;",
            "Ljava/lang/String;",
            ")",
            "Lcom/deepalhome/launcher/task/model/ScheduledTask;"
        }
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    move-object v3, p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "trigger"

    move-object v5, p4

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "actions"

    move-object v6, p5

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    move-object v1, v0

    move v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/deepalhome/launcher/task/model/ScheduledTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    return-object p0
.end method

.method public final getConditionLogic()Lcom/deepalhome/launcher/task/model/ConditionLogic;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    return-object p0
.end method

.method public final getConditions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    return-object p0
.end method

.method public final getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getTrigger()Lcom/deepalhome/launcher/task/model/TaskTrigger;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    return-void
.end method

.method public final setConditionLogic(Lcom/deepalhome/launcher/task/model/ConditionLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    return-void
.end method

.method public final setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    return-void
.end method

.method public final setShareCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    return-void
.end method

.method public final setTrigger(Lcom/deepalhome/launcher/task/model/TaskTrigger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScheduledTask(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->trigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conditionLogic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ScheduledTask;->shareCode:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
