.class public final Lorg/repackage/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/repackage/a/a/a/a/b;->$r8$classId:I

    iput-object p2, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget v0, p0, Lorg/repackage/a/a/a/a/b;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "Coolpad"

    iget-object p0, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/umeng/analytics/pro/aw;

    const-string v0, "onServiceConnected: oaid = "

    :try_start_0
    invoke-static {p2}, Lcom/umeng/analytics/pro/a$b;->a(Landroid/os/IBinder;)Lcom/umeng/analytics/pro/a;

    move-result-object p2

    iget-object v1, p0, Lcom/umeng/analytics/pro/aw;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/umeng/analytics/pro/a$b$a;

    invoke-virtual {p2, v1}, Lcom/umeng/analytics/pro/a$b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/umeng/analytics/pro/aw;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/analytics/pro/aw;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected failed e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/umeng/analytics/pro/aw;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceBound:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->currentServicePackage:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->currentServicePackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->flushPendingSpeak()V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopSpeaking:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopText:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->reverseLoopText:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->playOutsideTts(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->scheduleNextReverseLoop()V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lorg/repackage/a/a/a/a/c;

    sget v0, Lorg/repackage/a/a/a/a$a;->$r8$clinit:I

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Lorg/repackage/a/a/a/a;

    if-eqz v1, :cond_5

    move-object p2, v0

    check-cast p2, Lorg/repackage/a/a/a/a;

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/repackage/a/a/a/a$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lorg/repackage/a/a/a/a$a$a;->a:Landroid/os/IBinder;

    move-object p2, v0

    :goto_2
    iput-object p2, p1, Lorg/repackage/a/a/a/a/c;->a:Ljava/lang/Object;

    iget-object p1, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lorg/repackage/a/a/a/a/c;

    iget-object p1, p1, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    check-cast p0, Lorg/repackage/a/a/a/a/c;

    iget-object p0, p0, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget p1, p0, Lorg/repackage/a/a/a/a/b;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p0, "Coolpad"

    const-string p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p0, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrLogicBinder:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->vrServiceBound:Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lorg/repackage/a/a/a/a/b;->a:Ljava/lang/Object;

    check-cast p0, Lorg/repackage/a/a/a/a/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/repackage/a/a/a/a/c;->a:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
