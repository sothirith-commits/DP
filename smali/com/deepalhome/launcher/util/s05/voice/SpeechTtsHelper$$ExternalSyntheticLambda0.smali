.class public final synthetic Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopSpeaking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopText:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopText:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->playOutsideTts(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->connectSpeechService()V

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->scheduleNextReverseLoop()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopSpeaking:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopText:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopRunnable:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->updateOutsideSwitch(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->transactVoid(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
