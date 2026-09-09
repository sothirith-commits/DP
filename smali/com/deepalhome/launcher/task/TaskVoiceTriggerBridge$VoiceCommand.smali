.class public final Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge$VoiceCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final query:Ljava/lang/String;

.field public final requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge$VoiceCommand;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/TaskVoiceTriggerBridge$VoiceCommand;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native hashCode()I
.end method

.method public final native toString()Ljava/lang/String;
.end method
