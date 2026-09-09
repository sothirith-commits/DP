.class public final Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->instance:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->instance:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->instance:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
