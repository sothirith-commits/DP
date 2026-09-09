.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;
.super Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceKey"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "Voice key"

    const/4 v1, 0x0

    const-string v2, "voice_key"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
