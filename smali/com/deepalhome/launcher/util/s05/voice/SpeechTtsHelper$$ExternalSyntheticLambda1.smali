.class public final synthetic Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    const-string v1, "$targetText"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopText:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopSpeaking:Z

    iget-object v1, v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->mainHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopRunnable:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->playOutsideTts(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->scheduleNextReverseLoop()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->connectSpeechService()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->scheduleNextReverseLoop()V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$targetText"

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->playOutsideTts(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    iput-object p0, v1, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->pendingOutsideText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->connectSpeechService()V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    const-string v1, "$targetText"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->isSpeechServiceReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->playTts(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iput-object p0, v0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->pendingText:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->connectSpeechService()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
