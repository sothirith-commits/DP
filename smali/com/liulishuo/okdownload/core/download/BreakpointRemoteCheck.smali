.class public final Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public acceptRange:Z

.field public failedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public final info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

.field public instanceLength:J

.field public resumable:Z

.field public final task:Lcom/liulishuo/okdownload/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    return-void
.end method


# virtual methods
.method public final check()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    new-instance v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;

    iget-object v3, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v4, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v5

    iget-object v5, v5, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-virtual {v5, v3}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v5

    iget-object v5, v5, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-virtual {v5}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkAvailable()V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v5

    iget-object v5, v5, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    iget-object v6, v3, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;->create(Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v5

    iget-object v6, v5, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v6, Ljava/net/URLConnection;

    :try_start_0
    iget-object v7, v4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    invoke-static {v7}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "If-Match"

    iget-object v4, v4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    :goto_0
    const-string v4, "Range"

    const-string v7, "bytes=0-0"

    invoke-virtual {v5, v4, v7}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/liulishuo/okdownload/DownloadTask;->headerMapFields:Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-static {v4, v5}, Lcom/liulishuo/okdownload/core/Util;->addUserRequestHeaderField(Ljava/util/Map;Lcom/koushikdutta/async/FilteredDataEmitter$1;)V

    :cond_1
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v4

    iget-object v4, v4, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v4, v4, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v5}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->getResponseCode()I

    move-result v7

    iput v7, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseCode:I

    invoke-virtual {v5}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->getResponseCode()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0xce

    if-ne v7, v9, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    const-string v7, "Accept-Ranges"

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "bytes"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_1
    iput-boolean v7, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->acceptRange:Z

    invoke-static {v5}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->findInstanceLength(Lcom/koushikdutta/async/FilteredDataEmitter$1;)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J

    const-string v7, "Etag"

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseEtag:Ljava/lang/String;

    const-string v7, "Content-Disposition"

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    if-nez v7, :cond_4

    :catch_0
    :cond_3
    move-object v7, v10

    goto :goto_2

    :cond_4
    :try_start_1
    sget-object v11, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v11, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    sget-object v11, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_NON_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iput-object v7, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseFilename:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    iget v11, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseCode:I

    invoke-virtual {v4, v3, v11, v7}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    iget-wide v11, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v13, -0x1

    cmp-long v4, v11, v13

    const-string v7, "Content-Length"

    if-eqz v4, :cond_7

    :cond_6
    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    :try_start_3
    const-string v4, "Content-Range"

    invoke-virtual {v6, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    goto :goto_3

    :cond_8
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v6, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v12, "chunked"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gtz v4, :cond_a

    goto :goto_3

    :cond_a
    move v4, v8

    :goto_4
    invoke-virtual {v5}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->release()V

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v4

    iget-object v4, v4, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    iget-object v5, v3, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;->create(Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v4

    iget-object v5, v4, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v5, Ljava/net/URLConnection;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v6

    iget-object v6, v6, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v6, v6, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    :try_start_4
    const-string v12, "HEAD"

    instance-of v15, v5, Ljava/net/HttpURLConnection;

    if-eqz v15, :cond_b

    move-object v15, v5

    check-cast v15, Ljava/net/HttpURLConnection;

    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_b
    iget-object v12, v3, Lcom/liulishuo/okdownload/DownloadTask;->headerMapFields:Ljava/util/Map;

    if-eqz v12, :cond_c

    invoke-static {v12, v4}, Lcom/liulishuo/okdownload/core/Util;->addUserRequestHeaderField(Ljava/util/Map;Lcom/koushikdutta/async/FilteredDataEmitter$1;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_c
    :goto_5
    invoke-virtual {v5}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v6, v3, v12}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v4}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->getResponseCode()I

    move-result v12

    invoke-virtual {v5}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v6, v3, v12, v15}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move-wide v5, v13

    goto :goto_6

    :cond_d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :goto_6
    iput-wide v5, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v4}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->release()V

    goto :goto_8

    :goto_7
    invoke-virtual {v4}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->release()V

    throw v0

    :cond_e
    :goto_8
    iget-boolean v3, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->acceptRange:Z

    iget-wide v4, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J

    cmp-long v6, v4, v13

    if-nez v6, :cond_f

    move v6, v8

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    :goto_9
    iget-object v7, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseEtag:Ljava/lang/String;

    iget-object v12, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseFilename:Ljava/lang/String;

    iget v2, v2, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseCode:I

    iget-object v13, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v14, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-static {v1}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v12}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v13, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    sget-object v12, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->TMP_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object v15, v10

    :goto_a
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-virtual {v12, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    :cond_10
    invoke-static {v15}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    :try_start_5
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    const-string v15, "UTF-8"

    invoke-virtual {v1, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    :catch_1
    move-object v1, v10

    :goto_b
    if-eqz v1, :cond_13

    new-instance v10, Ljava/lang/StringBuilder;

    array-length v12, v1

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v12, v1

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v12, :cond_12

    aget-byte v8, v1, v15

    and-int/lit16 v8, v8, 0xff

    const/16 v11, 0x10

    if-ge v8, v11, :cond_11

    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto :goto_c

    :cond_12
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_13
    move-object v12, v10

    goto :goto_d

    :cond_14
    move-object v12, v15

    :goto_d
    if-eqz v12, :cond_15

    goto :goto_e

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t find valid filename."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_e
    iget-object v1, v13, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-static {v1}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    monitor-enter v13

    :try_start_6
    iget-object v1, v13, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-static {v1}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v13, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iput-object v12, v1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    iget-object v1, v14, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iput-object v12, v1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    :cond_17
    monitor-exit v13

    goto :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_18
    :goto_f
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iput-boolean v6, v1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    iput-object v7, v1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    iget-object v6, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1, v6}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->isFileConflictAfterRun(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    :goto_10
    iget-object v6, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-static {v2, v1, v6, v7}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->getPreconditionFailedCause(IZLcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v6, 0x1

    goto :goto_11

    :cond_1a
    const/4 v6, 0x0

    :goto_11
    iput-boolean v6, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->resumable:Z

    iput-object v1, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->failedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    iput-wide v4, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->instanceLength:J

    iput-boolean v3, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->acceptRange:Z

    const/16 v1, 0x1a0

    if-ne v2, v1, :cond_1b

    cmp-long v1, v4, v12

    if-ltz v1, :cond_1b

    if-eqz v6, :cond_1b

    goto :goto_13

    :cond_1b
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v3

    cmp-long v1, v3, v12

    if-eqz v1, :cond_1c

    const/4 v8, 0x1

    goto :goto_12

    :cond_1c
    const/4 v8, 0x0

    :goto_12
    const/16 v1, 0xc8

    if-eq v2, v9, :cond_1d

    if-ne v2, v1, :cond_1e

    :cond_1d
    if-ne v2, v1, :cond_1f

    if-nez v8, :cond_1e

    goto :goto_13

    :cond_1e
    new-instance v1, Lcom/liulishuo/okdownload/core/exception/ServerCanceledException;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/liulishuo/okdownload/core/exception/ServerCanceledException;-><init>(IJ)V

    throw v1

    :cond_1f
    :goto_13
    return-void

    :cond_20
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;

    throw v0

    :goto_14
    invoke-virtual {v5}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->release()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acceptRange["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->acceptRange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] resumable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->resumable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] failedCause["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->failedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] instanceLength["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->instanceLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
