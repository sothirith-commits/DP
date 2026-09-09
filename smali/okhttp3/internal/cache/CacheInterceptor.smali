.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>(I)V

    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18

    move-object/from16 v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    const-string v2, "request"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    iget-object v4, v1, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    if-nez v4, :cond_0

    sget-object v4, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-static {v4}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v4

    iput-object v4, v1, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    :cond_0
    iget-boolean v4, v4, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v4, :cond_1

    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v2, v3, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :cond_1
    iget-object v4, v0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    instance-of v5, v4, Lokhttp3/internal/connection/RealCall;

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_3

    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    if-nez v5, :cond_4

    :cond_3
    sget-object v5, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    :cond_4
    iget-object v6, v2, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    if-nez v6, :cond_5

    if-nez v2, :cond_5

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    iput-object v1, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v1, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    const/16 v1, 0x1f8

    iput v1, v0, Lokhttp3/Response$Builder;->code:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    iput-object v1, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/internal/http/RealResponseBody;

    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lokhttp3/EventListener;->satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V

    return-object v0

    :cond_5
    const-string v1, "cacheResponse"

    sget-object v7, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    if-nez v6, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v7, v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v2, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lokhttp3/EventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    return-object v0

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v5, v4, v2}, Lokhttp3/EventListener;->cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_7
    invoke-virtual {v0, v6}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    const-string v4, "networkResponse"

    if-eqz v2, :cond_12

    const/16 v5, 0x130

    iget v6, v0, Lokhttp3/Response;->code:I

    if-ne v6, v5, :cond_11

    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lokhttp3/Headers$Builder;

    invoke-direct {v6}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v8, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v8}, Lokhttp3/Headers;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_1
    const-string v12, "Content-Type"

    const-string v13, "Content-Encoding"

    const-string v14, "Content-Length"

    iget-object v15, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    if-ge v11, v9, :cond_d

    invoke-virtual {v8, v11}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v11}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v8

    const-string v8, "Warning"

    invoke-static {v8, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "1"

    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-static {v10, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_8
    move/from16 v17, v9

    const/4 v9, 0x0

    :cond_9
    invoke-static {v14, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v13, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v12, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v3}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v15, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    :cond_b
    :goto_2
    invoke-virtual {v6, v3, v10}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v16

    move/from16 v9, v17

    const/4 v3, 0x0

    goto :goto_1

    :cond_d
    const/4 v9, 0x0

    invoke-virtual {v15}, Lokhttp3/Headers;->size()I

    move-result v3

    move v10, v9

    :goto_4
    if-ge v10, v3, :cond_10

    invoke-virtual {v15, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v13, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v12, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {v8}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v15, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    iput-object v3, v5, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    iget-wide v8, v0, Lokhttp3/Response;->sentRequestAtMillis:J

    iput-wide v8, v5, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iget-wide v8, v0, Lokhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v8, v5, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-static {v7, v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v2, v5, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-static {v7, v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-static {v4, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v1, v5, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw v0

    :cond_11
    iget-object v3, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v3, :cond_12

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_12
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-static {v7, v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v2, v3, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-static {v7, v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    invoke-static {v4, v0}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v0, v3, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
