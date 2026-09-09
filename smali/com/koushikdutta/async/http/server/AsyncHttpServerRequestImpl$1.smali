.class public final Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# instance fields
.field public final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method public onStringAvailable(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    const-string v0, "HTTP/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "not http!"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    iput-object v0, p1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    new-instance p1, Ljava/io/IOException;

    const-string v0, "data/header received was not not http"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "\r"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Headers;->addLine(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-wide/16 v3, -0x1

    :try_start_0
    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-wide v5, v3

    :goto_0
    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    iget-object v2, p1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v3, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v5, "not using chunked encoding, and no content-length found."

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/http/BodyDecoderException;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto/16 :goto_3

    :cond_4
    if-nez v3, :cond_5

    iget-object v2, p1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v2, v4}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/http/BodyDecoderException;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;

    invoke-direct {v3}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    new-instance v7, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v7}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v7, v3, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    iput-wide v5, v3, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_1

    :cond_6
    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "chunked"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-direct {v3}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;-><init>()V

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_1
    const-string p1, "Content-Encoding"

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;-><init>()V

    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_2
    move-object v2, p1

    goto :goto_3

    :cond_7
    const-string v5, "deflate"

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>()V

    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_2

    :cond_8
    move-object v2, v3

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v2, v4}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/http/BodyDecoderException;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->onBody()V

    iput-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v3, "Content-Type"

    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v7, v0

    :goto_4
    array-length v8, v6

    if-ge v7, v8, :cond_a

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v1

    goto :goto_4

    :cond_a
    array-length v7, v6

    move v8, v0

    :goto_5
    if-ge v8, v7, :cond_10

    aget-object v9, v6, v8

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v4, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;-><init>()V

    goto :goto_7

    :cond_b
    const-string v10, "application/json"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    new-instance v4, Lcom/koushikdutta/async/http/body/JSONObjectBody;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/body/JSONObjectBody;-><init>()V

    goto :goto_7

    :cond_c
    const-string v10, "text/plain"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v4, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/body/StringBody;-><init>()V

    goto :goto_7

    :cond_d
    if-eqz v9, :cond_f

    const-string v10, "multipart/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v6, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v6}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    invoke-static {p1, v5, v1, v4}, Lcom/koushikdutta/async/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$2;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p1

    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/Exception;

    const-string v1, "No boundary found for multipart/form-data"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_e
    const-string v1, "\r\n--"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v6, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    :goto_6
    move-object v4, v6

    goto :goto_7

    :cond_f
    add-int/2addr v8, v1

    goto :goto_5

    :cond_10
    :goto_7
    iput-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-nez v4, :cond_11

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-nez p1, :cond_11

    new-instance p1, Lcom/bumptech/glide/GlideBuilder$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x13

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(BI)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    :cond_11
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mReporter:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    invoke-interface {p1, v2, v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->parse(Lcom/koushikdutta/async/FilteredDataEmitter;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->onHeadersReceived()V

    return-void
.end method
