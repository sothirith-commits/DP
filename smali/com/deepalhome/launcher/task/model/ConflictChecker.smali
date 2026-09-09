.class public final Lcom/deepalhome/launcher/task/model/ConflictChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;,
        Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/model/ConflictChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/model/ConflictChecker;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/model/ConflictChecker;->INSTANCE:Lcom/deepalhome/launcher/task/model/ConflictChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkConditionConflicts(Ljava/util/List;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;)",
            "Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v1, v3, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    check-cast v5, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;->isConnected()Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    new-instance p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/task/model/TaskCondition;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskCondition;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, p1}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)V

    return-object p0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    if-eqz v6, :cond_7

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x0

    if-lt v1, v3, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    move v6, v5

    :goto_4
    if-ge v6, v1, :cond_b

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_5
    if-ge v9, v8, :cond_a

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    invoke-direct {p0, v10, v11}, Lcom/deepalhome/launcher/task/model/ConflictChecker;->timeRangesOverlap(Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;)Z

    move-result v10

    if-nez v10, :cond_9

    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    new-instance p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, p1}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)V

    return-object p0

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    move v6, v7

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    if-eqz v6, :cond_c

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v3, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    move v1, v5

    :goto_7
    if-ge v1, p1, :cond_10

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v8, v6

    :goto_8
    if-ge v8, v7, :cond_f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    invoke-direct {p0, v9, v10}, Lcom/deepalhome/launcher/task/model/ConflictChecker;->speedRangesOverlap(Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;)Z

    move-result v9

    if-nez v9, :cond_e

    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    new-instance p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, p1}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)V

    return-object p0

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    move v1, v6

    goto :goto_7

    :cond_10
    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    invoke-direct {p0, v5, v2, v3, v2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method private final checkTriggerConditionConflict(Lcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger;",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;)",
            "Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/task/model/TaskCondition;

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$WifiConnected;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$WifiConnected;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    if-eqz v0, :cond_0

    :goto_0
    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    new-instance v0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskCondition;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method private final speedRangesOverlap(Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMinSpeed()Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMaxSpeed()Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x7fffffff

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMinSpeed()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMaxSpeed()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    if-lt p1, v2, :cond_4

    if-lt v1, p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private final timeRangesOverlap(Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartHour()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartMinute()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndHour()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndMinute()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartHour()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartMinute()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndHour()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndMinute()I

    move-result p2

    add-int/2addr p2, p0

    const/4 p0, 0x0

    const/4 v2, 0x1

    if-le v0, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p0

    :goto_0
    if-le v1, p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, p0

    :goto_1
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-lt p1, v1, :cond_6

    if-lt p2, v0, :cond_6

    :cond_2
    :goto_2
    move p0, v2

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    if-ge p2, v0, :cond_2

    if-gt v1, p1, :cond_6

    goto :goto_2

    :cond_5
    if-ge p1, v1, :cond_2

    if-gt v0, p2, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return p0
.end method


# virtual methods
.method public final checkConflicts(Lcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger;",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/task/model/TaskCondition;",
            ">;",
            "Lcom/deepalhome/launcher/task/model/ConditionLogic;",
            ")",
            "Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;"
        }
    .end annotation

    const-string v0, "trigger"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "conditions"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "logic"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker;->checkTriggerConditionConflict(Lcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->getHasConflict()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/task/model/ConditionLogic;->AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    const/4 v0, 0x2

    if-ne p3, p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker;->checkConditionConflicts(Ljava/util/List;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->getHasConflict()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
