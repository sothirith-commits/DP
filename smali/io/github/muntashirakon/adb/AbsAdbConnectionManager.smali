.class public abstract Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

.field public mApi:I

.field public final mLock:Ljava/lang/Object;

.field public final mTimeout:J

.field public final mTimeoutUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/security/auth/Destroyable;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbConnection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    :cond_0
    return-void
.end method

.method public final connect(ILjava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    new-instance v2, Lretrofit2/OkHttpCall$1;

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lretrofit2/OkHttpCall$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/github/muntashirakon/adb/AdbConnection;

    invoke-direct {v4, p2, p1, v2, v1}, Lio/github/muntashirakon/adb/AdbConnection;-><init>(Ljava/lang/String;ILretrofit2/OkHttpCall$1;I)V

    iput-object v3, v4, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    iput-object v4, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    iget-wide p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object p0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2, p0}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getCertificate()Ljava/security/cert/Certificate;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getPrivateKey()Ljava/security/PrivateKey;
.end method

.method public final isConnected()Z
    .locals 3

    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    iget-boolean p0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final openStream(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 3

    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object p0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    invoke-virtual {p0, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p0
    :try_end_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not connected to ADB."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
