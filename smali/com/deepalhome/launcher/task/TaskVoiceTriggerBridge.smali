.class public final Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;

.field public static final actionNluPattern:Lkotlin/text/Regex;

.field public static final handledRequests:Ljava/util/LinkedHashMap;

.field public static volatile isStarted:Z

.field public static final logcatFilter:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

.field public static final logcatListener:Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge$logcatListener$1;

.field public static final requestLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;->INSTANCE:Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "ActionNluData\\{requestId=\'([^\']+)\', query=\'([^\']*)\'"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;->actionNluPattern:Lkotlin/text/Regex;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;->handledRequests:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;->requestLock:Ljava/lang/Object;

    new-instance v0, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    const-string v1, "ActionNluData{requestId=\'"

    const-string v2, "onDialogueResult() called with: dialogueResult = ["

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;I)V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;->logcatFilter:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    sget-object v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge$logcatListener$1;->INSTANCE:Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge$logcatListener$1;

    sput-object v0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge;->logcatListener:Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge$logcatListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
