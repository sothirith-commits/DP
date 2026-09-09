.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18

    const-string v1, "Connection"

    const-string v2, "close"

    const-string v3, "HTTP "

    move-object/from16 v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v4, v0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Lokhttp3/internal/connection/Exchange;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v4, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    iget-object v6, v4, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v7, v4, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    iget-object v8, v4, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v9, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iget-object v0, v9, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {v6, v7}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    invoke-interface {v5, v9}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    invoke-virtual {v6, v7, v9}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    :try_start_1
    iget-object v15, v9, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-static {v15}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    if-eqz v15, :cond_3

    if-eqz v0, :cond_3

    :try_start_2
    const-string v15, "100-continue"

    const-string v13, "Expect"

    iget-object v14, v9, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v14, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v13, :cond_0

    :try_start_3
    invoke-interface {v5}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v4, v12}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v6, v7}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v14, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v13

    :goto_0
    const/4 v13, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    const/16 v17, 0x0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v13, v0

    :try_start_6
    invoke-virtual {v6, v7, v13}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v4, v13}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_0
    move v14, v12

    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_1

    const/4 v15, 0x0

    :try_start_7
    iput-boolean v15, v4, Lokhttp3/internal/connection/Exchange;->isDuplex:Z

    iget-object v12, v9, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v15, v13

    :try_start_8
    invoke-virtual {v12}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v6, v7}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move/from16 v16, v14

    :try_start_9
    invoke-interface {v5, v9, v12, v13}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v14
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v17, v15

    :try_start_a
    new-instance v15, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    invoke-direct {v15, v4, v14, v12, v13}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V

    new-instance v12, Lokio/RealBufferedSink;

    invoke-direct {v12, v15}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    invoke-virtual {v0, v12}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v12}, Lokio/RealBufferedSink;->close()V

    goto :goto_4

    :goto_2
    move/from16 v12, v16

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    :goto_3
    move-object/from16 v17, v15

    goto :goto_2

    :catch_5
    move-exception v0

    move/from16 v16, v14

    goto :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v17, v13

    move/from16 v16, v14

    goto :goto_2

    :cond_1
    move-object/from16 v17, v13

    move/from16 v16, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v4, v12, v14, v13}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v0, v8, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {v5}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_4
    move/from16 v12, v16

    const/4 v13, 0x0

    goto :goto_5

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_b
    invoke-virtual {v7, v4, v12, v14, v13}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v17, v13

    :goto_5
    :try_start_c
    invoke-interface {v5}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    move v15, v12

    move-object v12, v13

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v14, v0

    :try_start_d
    invoke-virtual {v6, v7, v14}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v4, v14}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw v14
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    :goto_6
    move-object/from16 v17, v13

    goto :goto_7

    :catch_a
    move-exception v0

    const/4 v13, 0x0

    goto :goto_6

    :catch_b
    move-exception v0

    const/4 v13, 0x0

    :try_start_e
    invoke-virtual {v6, v7, v0}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :goto_7
    instance-of v14, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v14, :cond_11

    iget-boolean v14, v4, Lokhttp3/internal/connection/Exchange;->hasFailure:Z

    if-eqz v14, :cond_10

    move v15, v12

    move-object v12, v0

    :goto_8
    if-nez v17, :cond_4

    const/4 v14, 0x0

    :try_start_f
    invoke-virtual {v4, v14}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v15, :cond_4

    invoke-virtual {v6, v7}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    move-object/from16 v0, v17

    const/4 v15, 0x0

    goto :goto_9

    :cond_4
    move-object/from16 v0, v17

    goto :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_f

    :goto_9
    iput-object v9, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iget-object v14, v8, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object v14, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-wide v10, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    iget v13, v0, Lokhttp3/Response;->code:I

    const/16 v14, 0x64

    if-ne v13, v14, :cond_5

    :goto_a
    const/4 v13, 0x0

    goto :goto_b

    :cond_5
    const/16 v14, 0x66

    if-gt v14, v13, :cond_7

    const/16 v14, 0xc8

    if-ge v13, v14, :cond_7

    goto :goto_a

    :goto_b
    invoke-virtual {v4, v13}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v15, :cond_6

    invoke-virtual {v6, v7}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    :cond_6
    iput-object v9, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iget-object v8, v8, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object v8, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-wide v10, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    iget v13, v0, Lokhttp3/Response;->code:I

    :cond_7
    invoke-virtual {v6, v7, v0}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    move-object/from16 v6, p0

    iget-boolean v6, v6, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v6, :cond_8

    const/16 v6, 0x65

    if-ne v13, v6, :cond_8

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v4, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/internal/http/RealResponseBody;

    iput-object v4, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/Exchange;->openResponseBody(Lokhttp3/Response;)Lokhttp3/internal/http/RealResponseBody;

    move-result-object v0

    iput-object v0, v6, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :goto_c
    iget-object v4, v0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v4, v4, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v4, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v1, v0}, Lokhttp3/Response;->header$default(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-interface {v5}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V

    :cond_a
    const/16 v1, 0xcc

    if-eq v13, v1, :cond_b

    const/16 v1, 0xcd

    if-ne v13, v1, :cond_e

    :cond_b
    iget-object v1, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    goto :goto_d

    :cond_c
    const-wide/16 v1, -0x1

    :goto_d
    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_e

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_e

    :cond_d
    const/4 v13, 0x0

    :goto_e
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    :cond_e
    return-object v0

    :goto_f
    if-eqz v12, :cond_f

    invoke-static {v12, v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v12

    :cond_f
    throw v0

    :cond_10
    throw v0

    :cond_11
    throw v0
.end method
