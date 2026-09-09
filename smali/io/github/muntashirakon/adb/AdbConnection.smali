.class public final Lio/github/muntashirakon/adb/AdbConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public volatile mAbortOnUnauthorised:Z

.field public final mApi:I

.field public volatile mAuthorisationFailed:Z

.field public volatile mConnectAttempted:Z

.field public volatile mConnectionEstablished:Z

.field public volatile mConnectionException:Ljava/lang/Exception;

.field public final mConnectionThread:Ljava/lang/Thread;

.field public volatile mDeviceName:Ljava/lang/String;

.field public final mHost:Ljava/lang/String;

.field public volatile mIsTls:Z

.field public final mKeyPair:Lretrofit2/OkHttpCall$1;

.field public mLastLocalId:I

.field public final mLock:Ljava/lang/Object;

.field public volatile mMaxData:I

.field public final mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mPlainInputStream:Ljava/io/InputStream;

.field public final mPlainOutputStream:Ljava/io/OutputStream;

.field public final mPort:I

.field public volatile mProtocolVersion:I

.field public volatile mSentSignature:Z

.field public final mSocket:Ljava/net/Socket;

.field public volatile mTlsInputStream:Ljava/io/InputStream;

.field public volatile mTlsOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILretrofit2/OkHttpCall$1;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown Device"

    iput-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mHost:Ljava/lang/String;

    iput p2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPort:I

    iput p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mApi:I

    sget-object v1, Lio/github/muntashirakon/adb/AdbProtocol;->SYSTEM_IDENTITY_STRING_HOST:[B

    const/16 v1, 0x1c

    if-lt p4, v1, :cond_0

    const v2, 0x1000001

    goto :goto_0

    :cond_0
    const/high16 v2, 0x1000000

    :goto_0
    iput v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    if-lt p4, v1, :cond_1

    const/high16 p4, 0x100000

    goto :goto_1

    :cond_1
    const/16 v1, 0x18

    if-lt p4, v1, :cond_2

    const/high16 p4, 0x40000

    goto :goto_1

    :cond_2
    const/16 p4, 0x1000

    :goto_1
    iput p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lretrofit2/OkHttpCall$1;

    :try_start_0
    new-instance p3, Ljava/net/Socket;

    invoke-direct {p3, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainInputStream:Ljava/io/InputStream;

    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainOutputStream:Ljava/io/OutputStream;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    iput v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 p3, 0x1d

    invoke-direct {p2, p3, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lretrofit2/OkHttpCall$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Ljava/security/PrivateKey;

    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->destroy()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public final connect(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4

    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    if-nez v0, :cond_3

    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mApi:I

    sget-object v1, Lio/github/muntashirakon/adb/AdbProtocol;->SYSTEM_IDENTITY_STRING_HOST:[B

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const v2, 0x1000001

    goto :goto_0

    :cond_0
    const/high16 v2, 0x1000000

    :goto_0
    if-lt v0, v1, :cond_1

    const/high16 v0, 0x100000

    goto :goto_1

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    const/high16 v0, 0x40000

    goto :goto_1

    :cond_2
    const/16 v0, 0x1000

    :goto_1
    sget-object v1, Lio/github/muntashirakon/adb/AdbProtocol;->SYSTEM_IDENTITY_STRING_HOST:[B

    const v3, 0x4e584e43    # 9.072519E8f

    invoke-static {v3, v2, v0, v1}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAbortOnUnauthorised:Z

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 4

    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    if-eqz v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    new-instance v1, Lio/github/muntashirakon/adb/AdbStream;

    invoke-direct {v1, p0, v0}, Lio/github/muntashirakon/adb/AdbStream;-><init>(Lio/github/muntashirakon/adb/AdbConnection;I)V

    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lio/github/muntashirakon/adb/AdbProtocol;->SYSTEM_IDENTITY_STRING_HOST:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const v3, 0x4e45504f    # 8.2759366E8f

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v3, v0, p1, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, v1, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/net/ConnectException;

    const-string p1, "Stream open actively rejected by remote peer."

    invoke-direct {p0, p1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "connect() must be called first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sendPacket([B)V
    .locals 2

    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsOutputStream:Ljava/io/OutputStream;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainOutputStream:Ljava/io/OutputStream;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final waitForConnection(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    :goto_0
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v0, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    if-eqz p1, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionException:Ljava/lang/Exception;

    if-eqz p1, :cond_2

    instance-of p2, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "protocol error"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lio/github/muntashirakon/adb/AdbPairingRequiredException;

    const-string p3, "ADB pairing is required."

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lio/github/muntashirakon/adb/AdbPairingRequiredException;

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;

    invoke-direct {p1}, Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;-><init>()V

    throw p1

    :cond_4
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
