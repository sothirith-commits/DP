.class public final Lcom/deepalhome/launcher/event/EventActionSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

.field public static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-direct {v0}, Lcom/deepalhome/launcher/event/EventActionSerializer;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskActionAdapter;

    invoke-direct {v1}, Lcom/deepalhome/launcher/task/model/TaskActionAdapter;-><init>()V

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/ArrayList;

    const-class v3, Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-static {v3, v1}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v2, v1, Lcom/google/gson/TypeAdapter;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/gson/TypeAdapter;

    invoke-static {v1}, Lcom/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/event/EventActionSerializer;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/deepalhome/launcher/event/EventAction;
    .locals 4

    const-string v0, "actionId"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "task:"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "action:"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/event/EventActionSerializer;->gson:Lcom/google/gson/Gson;

    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const-class v1, Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/task/model/TaskAction;

    new-instance v0, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;-><init>(Lcom/deepalhome/launcher/task/model/TaskAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_1
    const-string v0, "cycle:"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/event/CycleType;->Companion:Lcom/deepalhome/launcher/event/CycleType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/event/CycleType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/event/CycleType;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/event/CycleType;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    check-cast v0, Lcom/deepalhome/launcher/event/CycleType;

    if-nez v0, :cond_4

    return-object v3

    :cond_4
    new-instance p0, Lcom/deepalhome/launcher/event/EventAction$CycleAction;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/event/EventAction$CycleAction;-><init>(Lcom/deepalhome/launcher/event/CycleType;)V

    :goto_1
    move-object v0, p0

    goto/16 :goto_4

    :cond_5
    const-string v0, "menu:"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/event/MenuType;->Companion:Lcom/deepalhome/launcher/event/MenuType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/event/MenuType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/event/MenuType;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/event/MenuType;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_7
    move-object v0, v3

    :goto_2
    check-cast v0, Lcom/deepalhome/launcher/event/MenuType;

    if-nez v0, :cond_8

    return-object v3

    :cond_8
    new-instance p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;-><init>(Lcom/deepalhome/launcher/event/MenuType;)V

    goto :goto_1

    :cond_9
    const-string v0, "body:"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/event/BodyControlType;->Companion:Lcom/deepalhome/launcher/event/BodyControlType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/event/BodyControlType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_a
    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_b
    move-object v0, v3

    :goto_3
    check-cast v0, Lcom/deepalhome/launcher/event/BodyControlType;

    if-nez v0, :cond_c

    return-object v3

    :cond_c
    new-instance p0, Lcom/deepalhome/launcher/event/EventAction$BodyControl;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/event/EventAction$BodyControl;-><init>(Lcom/deepalhome/launcher/event/BodyControlType;)V

    goto/16 :goto_1

    :catch_0
    :cond_d
    move-object v0, v3

    :goto_4
    return-object v0
.end method

.method public static encodeAction(Lcom/deepalhome/launcher/task/model/TaskAction;)Ljava/lang/String;
    .locals 2

    const-string v0, "action"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/event/EventActionSerializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0}, Lcom/deepalhome/launcher/event/EventActionSerializer;->decode(Ljava/lang/String;)Lcom/deepalhome/launcher/event/EventAction;

    move-result-object p0

    instance-of v1, p0, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;

    iget-object v4, v4, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;->taskId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130107

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const p0, 0x7f130106

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    instance-of v1, p0, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    if-eqz v1, :cond_5

    check-cast p0, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    iget-object p0, p0, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    check-cast p0, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTaskNameOrFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const v1, 0x7f130103

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    instance-of v1, p0, Lcom/deepalhome/launcher/event/EventAction$CycleAction;

    const-string v2, "getString(...)"

    if-eqz v1, :cond_6

    check-cast p0, Lcom/deepalhome/launcher/event/EventAction$CycleAction;

    iget-object p0, p0, Lcom/deepalhome/launcher/event/EventAction$CycleAction;->cycleType:Lcom/deepalhome/launcher/event/CycleType;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/event/CycleType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130104

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    instance-of v1, p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    if-eqz v1, :cond_7

    check-cast p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    iget-object p0, p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/event/MenuType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130105

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    instance-of v1, p0, Lcom/deepalhome/launcher/event/EventAction$BodyControl;

    if-eqz v1, :cond_8

    check-cast p0, Lcom/deepalhome/launcher/event/EventAction$BodyControl;

    iget-object p0, p0, Lcom/deepalhome/launcher/event/EventAction$BodyControl;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/event/BodyControlType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    if-nez p0, :cond_9

    const p0, 0x7f130127

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-object p0

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
