.class public final Lokio/Buffer$outputStream$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Lio/github/muntashirakon/adb/AdbStream;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lokio/Buffer$outputStream$1;->this$0:Ljava/io/Closeable;

    return-void
.end method

.method public constructor <init>(Lokio/Buffer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    iput-object p1, p0, Lokio/Buffer$outputStream$1;->this$0:Ljava/io/Closeable;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method private final close$okio$Buffer$outputStream$1()V
    .locals 0

    return-void
.end method

.method private final flush$okio$Buffer$outputStream$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget v0, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lokio/Buffer$outputStream$1;->flush()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 2

    iget v0, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/Buffer$outputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lio/github/muntashirakon/adb/AdbStream;

    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

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
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lokio/Buffer$outputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/Buffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".outputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v2, v1, [B

    aput-byte p1, v2, v0

    invoke-virtual {p0, v2, v0, v1}, Lokio/Buffer$outputStream$1;->write([BII)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lokio/Buffer$outputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/Buffer;

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public write([B)V
    .locals 2

    iget v0, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer$outputStream$1;->write([BII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final write([BII)V
    .locals 11

    iget v0, p0, Lokio/Buffer$outputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/Buffer$outputStream$1;->this$0:Ljava/io/Closeable;

    move-object v0, p0

    check-cast v0, Lio/github/muntashirakon/adb/AdbStream;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iget-object p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mWriteReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    iget-boolean p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    if-nez p0, :cond_4

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    iget-boolean v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    if-eqz v2, :cond_3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p0, v3, v4, v2}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    iget p0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    if-eqz p3, :cond_2

    if-gt p3, p0, :cond_1

    iget-object v8, v0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    iget v3, v0, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    iget v4, v0, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    const v2, 0x45545257

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[BII)[B

    move-result-object v2

    invoke-virtual {v8, v2}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    add-int/2addr p2, p3

    move p3, v1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    iget v6, v0, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    iget v7, v0, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    const v5, 0x45545257

    move-object v8, p1

    move v9, p2

    move v10, p0

    invoke-static/range {v5 .. v10}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[BII)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    add-int/2addr p2, p0

    sub-int/2addr p3, p0

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "connect() must be called first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_4
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :pswitch_0
    const-string v0, "data"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lokio/Buffer$outputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
