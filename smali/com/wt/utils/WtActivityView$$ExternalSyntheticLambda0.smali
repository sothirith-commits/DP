.class public final synthetic Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$deepalhome$launcher$util$FileDebugLogger$$ExternalSyntheticLambda0()V
    .locals 5

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/FileDebugLogger;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->writerRunning:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->logQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->writerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->writerThread:Ljava/lang/Thread;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->writerThread:Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1

    throw p0

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_3
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->logQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catch_0
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/util/FileDebugLogger;->writeLineToFile(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_5
    iget-object v2, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->writerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->writerThread:Ljava/lang/Thread;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->writerThread:Ljava/lang/Thread;

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_4
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v2

    throw v1

    :goto_7
    monitor-exit v2

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lio/github/muntashirakon/adb/AdbConnection;

    :goto_0
    iget-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_9

    :try_start_0
    iget-boolean p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    if-eqz p0, :cond_0

    iget-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mTlsInputStream:Ljava/io/InputStream;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mPlainInputStream:Ljava/io/InputStream;

    :goto_1
    iget v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    iget v6, v4, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    invoke-static {p0, v5, v6}, Lio/github/muntashirakon/adb/AdbProtocol$Message;->parse(Ljava/io/InputStream;II)Lio/github/muntashirakon/adb/AdbProtocol$Message;

    move-result-object p0

    iget v5, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    sparse-switch v5, :sswitch_data_0

    const-string p0, "AdbConnection"

    const-string v6, "Unrecognized command = 0x%x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :sswitch_0
    const p0, 0x534c5453

    const/high16 v5, 0x1000000

    invoke-static {p0, v5, v3, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    iget-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lretrofit2/OkHttpCall$1;

    invoke-static {p0}, Lio/github/muntashirakon/adb/SslUtils;->getSslContext(Lretrofit2/OkHttpCall$1;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    iget-object v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    iget-object v6, v4, Lio/github/muntashirakon/adb/AdbConnection;->mHost:Ljava/lang/String;

    iget v7, v4, Lio/github/muntashirakon/adb/AdbConnection;->mPort:I

    invoke-virtual {p0, v5, v6, v7, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    const-string v5, "AdbConnection"

    const-string v6, "Handshake succeeded."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mTlsInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    iput-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mTlsOutputStream:Ljava/io/OutputStream;

    iput-boolean v1, v4, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :sswitch_1
    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget v5, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    iput v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    iget p0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    iput p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    iput-boolean v1, v4, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :sswitch_2
    iget-boolean v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    if-eqz v5, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v5, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    if-eq v5, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-boolean v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mSentSignature:Z

    const v6, 0x48545541

    if-eqz v5, :cond_4

    iget-boolean p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mAbortOnUnauthorised:Z

    if-eqz p0, :cond_3

    iput-boolean v1, v4, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    goto/16 :goto_6

    :cond_3
    iget-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lretrofit2/OkHttpCall$1;

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/security/cert/Certificate;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    iget-object v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v5}, Lio/github/muntashirakon/adb/AndroidPubkey;->encodeWithName(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B

    move-result-object p0

    const/4 v5, 0x3

    invoke-static {v6, v5, v3, p0}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lretrofit2/OkHttpCall$1;

    iget-object v5, v5, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast v5, Ljava/security/PrivateKey;

    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    sget-object v7, Lio/github/muntashirakon/adb/AndroidPubkey;->SIGNATURE_PADDING_AS_INT:[I

    const-string v7, "RSA/ECB/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object v5, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    invoke-virtual {v7, v5}, Ljavax/crypto/Cipher;->update([B)[B

    invoke-virtual {v7, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {v6, v0, v3, p0}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    iput-boolean v1, v4, Lio/github/muntashirakon/adb/AdbConnection;->mSentSignature:Z

    :goto_2
    invoke-virtual {v4, p0}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    goto/16 :goto_0

    :sswitch_3
    iget-boolean v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v5, v4, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    iget v6, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/muntashirakon/adb/AdbStream;

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget v6, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v7, 0x59414b4f

    if-ne v6, v7, :cond_7

    iget p0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    iput p0, v5, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    iget-object p0, v5, Lio/github/muntashirakon/adb/AdbStream;->mWriteReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_7
    const v8, 0x45545257

    if-ne v6, v8, :cond_8

    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    iget-object v6, v5, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v8, v5, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, v5, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object p0, v5, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    iget v6, v5, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    iget v8, v5, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    invoke-static {v7, v6, v8, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :cond_8
    iget-object v6, v4, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v1}, Lio/github/muntashirakon/adb/AdbStream;->notifyClose(Z)V

    :goto_3
    monitor-exit v5

    goto/16 :goto_0

    :goto_4
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_5
    iput-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionException:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    monitor-enter v4

    :try_start_b
    iget-object p0, v4, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/muntashirakon/adb/AdbStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_7

    :cond_a
    :try_start_d
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    iput-boolean v3, v4, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    iput-boolean v3, v4, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    monitor-exit v4

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tinnove/comlib/BaseApp;->getApp()Landroid/app/Application;

    new-instance v0, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/openos/virtualcar/VirtualCar;->createVirtualCar(Lcom/openos/virtualcar/VirtualServiceReadyListener;Landroid/os/Handler;)Lcom/openos/virtualcar/VirtualCar;

    move-result-object v0

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mVirtualCar:Lcom/openos/virtualcar/VirtualCar;

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    invoke-virtual {p0, v1}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->initTempMaxValue(I)V

    invoke-virtual {p0, v1}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->initTempMinValue(I)V

    iget-object v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    iget-object v2, v2, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    const/4 v4, 0x4

    if-nez v2, :cond_b

    goto :goto_8

    :cond_b
    :try_start_e
    invoke-virtual {v2}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->isSupport()Z

    move-result v2
    :try_end_e
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_e .. :try_end_e} :catch_2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v4}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->initTempMaxValue(I)V

    invoke-virtual {p0, v4}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->initTempMinValue(I)V

    goto :goto_8

    :catch_2
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSupport error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "VirtualCarManagerImpl"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_8
    const-string v2, " start init hvac state"

    const-string v5, "HvacManager"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    invoke-direct {v2}, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;-><init>()V

    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v7, 0x31400201

    invoke-virtual {v6, v7, v3}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v4, :cond_d

    move v6, v1

    goto :goto_9

    :cond_d
    move v6, v3

    :goto_9
    iput-boolean v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    :cond_e
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v7, 0x35400101

    invoke-virtual {v6, v7, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v6, :cond_f

    move v6, v1

    goto :goto_a

    :cond_f
    move v6, v3

    :goto_a
    iput-boolean v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    :cond_10
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v7, 0x35600105

    invoke-virtual {v6, v7, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_11

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    :cond_11
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {v6, v7, v4}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    :cond_12
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v7, 0x35400107

    invoke-virtual {v6, v7, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    :cond_13
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v7, 0x35400109

    invoke-virtual {v6, v7, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_14

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    :cond_14
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v7, 0x3540010a

    invoke-virtual {v6, v7, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v6, :cond_15

    move v6, v1

    goto :goto_b

    :cond_15
    move v6, v3

    :goto_b
    iput-boolean v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isGeneratorOn:Z

    :cond_16
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v7, 0x3540010f

    invoke-virtual {v6, v7, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_17

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatHeatLevel:I

    :cond_17
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v8, 0x35400111

    invoke-virtual {v6, v8, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_18

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatVentilationLevel:I

    :cond_18
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {v6, v7, v4}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_19

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatHeatLevel:I

    :cond_19
    iget-object v6, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {v6, v8, v4}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatVentilationLevel:I

    :cond_1a
    iget-object v4, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v6, 0x33400103

    invoke-virtual {v4, v6, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1c

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_1b

    move v4, v1

    goto :goto_c

    :cond_1b
    move v4, v3

    :goto_c
    iput-boolean v4, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    :cond_1c
    iget-object v4, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {v4, v6, v0}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_1d

    move v4, v1

    goto :goto_d

    :cond_1d
    move v4, v3

    :goto_d
    iput-boolean v4, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    :cond_1e
    iget-object v4, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v6, 0x35400108

    invoke-virtual {v4, v6, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1f

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    :cond_1f
    iget-object v4, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v6, 0x35400102

    invoke-virtual {v4, v6, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_21

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_20

    move v4, v1

    goto :goto_e

    :cond_20
    move v4, v3

    :goto_e
    iput-boolean v4, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    :cond_21
    iget-object v4, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    const v6, 0x35400104

    invoke-virtual {v4, v6, v1}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getValue(II)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_23

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_22

    goto :goto_f

    :cond_22
    move v1, v3

    :goto_f
    iput-boolean v1, v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initHvacState "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/16 v3, 0x11

    invoke-direct {v1, v3, p0, v2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    const-string v0, "$editText"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/widget/EditText;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_24

    goto :goto_10

    :cond_24
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_10
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/lzf/easyfloat/permission/PermissionFragment;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_12

    :cond_25
    invoke-static {v0}, Lcom/lzf/easyfloat/permission/PermissionUtils;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/lzf/easyfloat/utils/Logger;->INSTANCE:Lcom/lzf/easyfloat/utils/Logger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "PermissionFragment onActivityResult: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "msg"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/lzf/easyfloat/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "tag"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/lzf/easyfloat/permission/PermissionFragment;->onPermissionResult:Landroidx/cardview/widget/CardView$1;

    if-nez v1, :cond_26

    goto :goto_11

    :cond_26
    if-eqz v0, :cond_27

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$1;->createFloat()V

    goto :goto_11

    :cond_27
    const-string v0, "No permission exception. You need to turn on overlay permissions."

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView$1;->callbackCreateFailed(Ljava/lang/String;)V

    :goto_11
    sput-object v2, Lcom/lzf/easyfloat/permission/PermissionFragment;->onPermissionResult:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_12
    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_28
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->writePending()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/timepicker/RadialViewGroup;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    iput-boolean v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v2

    if-eqz v2, :cond_29

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    goto :goto_13

    :cond_29
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    if-ne v2, v0, :cond_2a

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {v1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    :cond_2a
    :goto_13
    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BlePairingManager;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->foundDevice:Lcom/deepalhome/tuotuotie/BleDevice;

    if-nez v0, :cond_2b

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BlePairingManager"

    const-string v1, "Scan timeout, device not found"

    invoke-static {v0, v1, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->stopScan$tuotuotie_release()V

    new-instance v0, Lcom/deepalhome/tuotuotie/BlePairingState$Failed;

    const-string v1, "DeepalTag device not found"

    invoke-direct {v0, v1}, Lcom/deepalhome/tuotuotie/BlePairingState$Failed;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_2b
    return-void

    :pswitch_d
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2c
    iput-object v2, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->dialog:Landroid/app/AlertDialog;

    return-void

    :pswitch_e
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->access$showPlaceholder(Lcom/deepalhome/launcher/widget/ImageWidgetView;)V

    return-void

    :pswitch_f
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->$r8$lambda$aAgDDLiInaupo9ZLLy648AzUZ6U(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    return-void

    :pswitch_10
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult;

    const-string v0, "$result"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Restart;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Restart;->generation:J

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Restart;->request:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    invoke-static {v0, v1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->startSync(JLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;)V

    return-void

    :pswitch_11
    const-string v0, "$snapshot"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->refreshFromLifecycle()V

    goto :goto_14

    :cond_2e
    return-void

    :pswitch_12
    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->$r8$clinit:I

    const-string v0, "this$0"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    if-eqz v0, :cond_30

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->setSelectedPosition(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_2f

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->navRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_2f
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_30
    const-string p0, "navAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :pswitch_13
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService$Companion;

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->runnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getWallpaperCarouselIntervalMinutes()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->currentInterval:J

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_14
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_15
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/view/BaseView;

    invoke-static {p0}, Lcom/deepalhome/launcher/view/BaseView;->$r8$lambda$7TmP4wB_J7m1nA8G5EZXUifP1yk(Lcom/deepalhome/launcher/view/BaseView;)V

    return-void

    :pswitch_16
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->activeView:Landroid/view/View;

    if-nez v0, :cond_31

    goto :goto_15

    :cond_31
    iget-object v2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->enabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_15

    :cond_32
    iget-object v2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->onLongPress:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;->longPressTriggered:Z

    if-nez v2, :cond_33

    goto :goto_15

    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_34

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_34
    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :goto_15
    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->run$com$deepalhome$launcher$util$FileDebugLogger$$ExternalSyntheticLambda0()V

    return-void

    :pswitch_18
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->beforeShowKeyboard:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_35
    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v3, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->afterRequestFocus:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_36

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_17

    :cond_36
    instance-of v3, v0, Landroid/widget/EditText;

    if-eqz v3, :cond_37

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    :cond_37
    if-eqz v2, :cond_39

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_38

    goto :goto_16

    :cond_38
    const-string v3, ""

    :goto_16
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_39
    :goto_17
    iget-object p0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_3a

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3a
    return-void

    :pswitch_19
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Leightbitlab/com/blurview/BlurView;

    const-string v0, "$blurView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->freezeRunnables:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1a
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    invoke-static {p0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->$r8$lambda$oRwB29-Ls54ClB8WOeh-GGPQxdU(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    return-void

    :pswitch_1b
    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lcom/deepalhome/launcher/task/TaskExecutor;->$r8$lambda$R688QXJxgzDRGcqdeyBfCmZQFKc(Ljava/lang/Integer;)V

    return-void

    :pswitch_1c
    sget v0, Lcom/wt/utils/WtActivityView;->$r8$clinit:I

    iget-object p0, p0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/wt/utils/WtActivityView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_3
        0x45545257 -> :sswitch_3
        0x48545541 -> :sswitch_2
        0x4e584e43 -> :sswitch_1
        0x534c5453 -> :sswitch_0
        0x59414b4f -> :sswitch_3
    .end sparse-switch
.end method
