.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public bdsState:Ljava/lang/Object;

.field public index:I

.field public maxIndex:I

.field public final params:Ljava/lang/Object;

.field public publicSeed:Ljava/io/Serializable;

.field public root:Ljava/lang/Object;

.field public secretKeyPRF:Ljava/io/Serializable;

.field public secretKeySeed:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p9, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->$r8$classId:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:Ljava/io/Serializable;

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->maxIndex:I

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:Ljava/lang/Object;

    iput-object p8, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->maxIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:Ljava/io/Serializable;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 8

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "call"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:Ljava/io/Serializable;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->maxIndex:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/task/TaskShareManager;->uploadWithEndpoint(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_0
    const-string p2, "call"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:Ljava/io/Serializable;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->maxIndex:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/task/TaskShareManager;->uploadWithEndpoint(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    check-cast v3, Ljava/util/List;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:Ljava/io/Serializable;

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->maxIndex:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:Ljava/lang/Object;

    move-object/from16 v17, v5

    check-cast v17, Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v3

    move-object v7, v15

    move v8, v14

    move-object v9, v13

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-static/range {v5 .. v12}, Lcom/deepalhome/launcher/task/TaskShareManager;->uploadWithEndpoint(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :goto_0
    move-object v2, v0

    goto/16 :goto_7

    :catch_0
    move-object/from16 v20, v13

    move/from16 v21, v14

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v5, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    invoke-static {v5}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "put-url"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_4

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move-object/from16 v20, v13

    move/from16 v21, v14

    goto :goto_3

    :cond_5
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v6, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    sget-object v5, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v7, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v8, "application/json"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v7}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$2;

    move-result-object v5

    const-string v7, "PUT"

    invoke-virtual {v6, v7, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    sget-object v6, Lcom/deepalhome/launcher/task/TaskShareManager;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lokhttp3/internal/connection/RealCall;

    const/4 v7, 0x0

    invoke-direct {v12, v6, v5, v7}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v18, 0x1

    move-object v5, v11

    move-object v6, v3

    move v7, v4

    move-object v8, v15

    move v9, v14

    move-object v10, v13

    move-object v2, v11

    move-object/from16 v11, v16

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object/from16 v20, v13

    move-object v13, v0

    move/from16 v21, v14

    move/from16 v14, v18

    :try_start_2
    invoke-direct/range {v5 .. v14}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v5, v19

    invoke-virtual {v5, v2}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    goto :goto_5

    :goto_3
    sget-object v2, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v3

    move-object v7, v15

    move/from16 v8, v21

    move-object/from16 v9, v20

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-static/range {v5 .. v12}, Lcom/deepalhome/launcher/task/TaskShareManager;->uploadWithEndpoint(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    :goto_4
    :try_start_3
    sget-object v2, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v3

    move-object v7, v15

    move/from16 v8, v21

    move-object/from16 v9, v20

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-static/range {v5 .. v12}, Lcom/deepalhome/launcher/task/TaskShareManager;->uploadWithEndpoint(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :goto_7
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_0
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:Ljava/io/Serializable;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->maxIndex:I

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function1;

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_6

    :try_start_6
    sget-object v0, Lcom/deepalhome/launcher/task/TaskShareManager;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/deepalhome/launcher/task/TaskShareManager$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v9, v10}, Lcom/deepalhome/launcher/task/TaskShareManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8
    const/4 v0, 0x0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :cond_6
    sget-object v2, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    add-int/lit8 v5, v0, 0x1

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v4 .. v11}, Lcom/deepalhome/launcher/task/TaskShareManager;->uploadWithEndpoint(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    :goto_9
    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_a
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
