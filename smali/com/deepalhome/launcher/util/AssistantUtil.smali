.class public final Lcom/deepalhome/launcher/util/AssistantUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil;

.field public static final destNamePattern:Lkotlin/text/Regex;

.field public static final destNaviPattern:Lkotlin/text/Regex;

.field public static final destPattern:Lkotlin/text/Regex;

.field public static volatile isStarted:Z

.field public static final logcatFilter:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

.field public static final logcatListener:Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;

.field public static final parsers:Ljava/util/List;

.field public static final queryPattern:Lkotlin/text/Regex;

.field public static final queryPlainPattern:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v8, Lcom/deepalhome/launcher/util/AssistantUtil;

    invoke-direct {v8}, Lcom/deepalhome/launcher/util/AssistantUtil;-><init>()V

    sput-object v8, Lcom/deepalhome/launcher/util/AssistantUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "query=\'([^\']*)\'"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->queryPattern:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "query=([^,}\\]]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->queryPlainPattern:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\"name\":\"([^\"]+)\""

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\"destName\":\"([^\"]+)\""

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->destNamePattern:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\"destNavi\":\"(-?[0-9.]+),(-?[0-9.]+)\""

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->destNaviPattern:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\"dest\":\"(-?[0-9.]+),(-?[0-9.]+)\""

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->destPattern:Lkotlin/text/Regex;

    new-instance v9, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;

    new-instance v10, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-class v3, Lcom/deepalhome/launcher/util/AssistantUtil;

    const-string v4, "parseNluLog"

    const/4 v1, 0x1

    const-string v5, "parseNluLog(Ljava/lang/String;)Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;"

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v0, v10

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "onHandleAction() called with: nluData"

    invoke-direct {v9, v0, v10}, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v10, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;

    new-instance v11, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-class v3, Lcom/deepalhome/launcher/util/AssistantUtil;

    const-string v4, "parseNluLog"

    const/4 v1, 0x1

    const-string v5, "parseNluLog(Ljava/lang/String;)Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;"

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v0, v11

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "handleAppSceneAction() called with: data = [NluResponseData"

    invoke-direct {v10, v0, v11}, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v11, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-class v3, Lcom/deepalhome/launcher/util/AssistantUtil;

    const-string v4, "parseNluLog"

    const/4 v1, 0x1

    const-string v5, "parseNluLog(Ljava/lang/String;)Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;"

    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object v0, v12

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "receive data: NluResponseData"

    invoke-direct {v11, v0, v12}, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    filled-new-array {v9, v10, v11}, [Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->parsers:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;

    iget-object v2, v2, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;I)V

    sput-object v1, Lcom/deepalhome/launcher/util/AssistantUtil;->logcatFilter:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    sget-object v0, Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->logcatListener:Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$parseNluLog(Lcom/deepalhome/launcher/util/AssistantUtil;Ljava/lang/String;)Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/AssistantUtil;->destNaviPattern:Lkotlin/text/Regex;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/util/AssistantUtil;->destPattern:Lkotlin/text/Regex;

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v5, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    new-instance v6, Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/deepalhome/launcher/util/AssistantUtil$Coord;-><init>(DD)V

    move-object/from16 v17, v6

    goto :goto_0

    :cond_1
    move-object/from16 v17, v3

    :goto_0
    new-instance v1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;

    sget-object v5, Lcom/deepalhome/launcher/util/AssistantUtil;->queryPattern:Lkotlin/text/Regex;

    invoke-virtual {v5, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v5

    const-string v6, "null"

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v5, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v12, v5

    goto :goto_6

    :cond_4
    :goto_3
    sget-object v5, Lcom/deepalhome/launcher/util/AssistantUtil;->queryPlainPattern:Lkotlin/text/Regex;

    invoke-virtual {v5, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v5, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_7
    :goto_5
    const-string v5, ""

    goto :goto_2

    :goto_6
    const-string v5, "type=startNavi"

    invoke-static {v0, v5, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    const-string v5, "type=showOptionList"

    invoke-static {v0, v5, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14

    const-string v5, "entities"

    invoke-static {v0, v5, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v15

    sget-object v5, Lcom/deepalhome/launcher/util/AssistantUtil;->destNamePattern:Lkotlin/text/Regex;

    invoke-virtual {v5, v0, v2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatcherMatchResult;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_8
    move-object/from16 v16, v3

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;-><init>(Ljava/lang/String;ZZZLjava/lang/String;Lcom/deepalhome/launcher/util/AssistantUtil$Coord;)V

    return-object v1
.end method

.method public static logS05VoiceSemantic(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[S05] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AssistantUtil"

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized start()V
    .locals 5

    const-string v0, "AssistantUtil.start() called, isStarted="

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/deepalhome/launcher/util/AssistantUtil;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/deepalhome/launcher/util/AssistantUtil;->isStarted:Z

    sget-object v2, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v3, "AssistantUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/deepalhome/launcher/util/AssistantUtil;->isStarted:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", carS05="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", voiceAutoNavi="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->start(Landroid/app/Application;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v1, Lcom/deepalhome/launcher/util/AssistantUtil;->logcatListener:Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;

    sget-object v2, Lcom/deepalhome/launcher/util/AssistantUtil;->logcatFilter:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/util/LogcatUtil;->addOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
