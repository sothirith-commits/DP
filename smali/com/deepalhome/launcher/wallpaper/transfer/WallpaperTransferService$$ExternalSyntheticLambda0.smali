.class public final synthetic Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;)V
    .locals 13

    const/16 v0, 0x19d

    const-wide/16 v1, 0x0

    const-string v3, "Content-Length"

    const-string v4, "Invalid request"

    const/16 v5, 0x190

    const-string v6, "Invalid token"

    const/16 v7, 0x191

    const-string v8, "X-Auth-Token"

    const-string v9, "request"

    const-string v10, "response"

    const-string v11, "this$0"

    iget-object v12, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p0, v8}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v12, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->securityToken:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iput v7, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {p2, v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v6, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    check-cast v6, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v6, :cond_1

    iput v5, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    const-wide/32 v3, 0x1f00000

    cmp-long p0, v1, v3

    if-lez p0, :cond_3

    iget-object p0, v12, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput v0, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    const-string p0, "File too large (max 30MB)"

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    invoke-direct {p0, v12, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;J)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v12, v6, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;Ljava/lang/Object;I)V

    iput-object v0, v6, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v12, p2, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;Ljava/lang/Object;I)V

    iput-object v0, p1, Lcom/koushikdutta/async/DataEmitterBase;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    :goto_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p0, v8}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v12, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->securityToken:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iput v7, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {p2, v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v6, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    check-cast v6, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v6, :cond_5

    iput v5, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_6
    const-wide/32 v3, 0x12d00000

    cmp-long p0, v1, v3

    if-lez p0, :cond_7

    iget-object p0, v12, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput v0, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    const-string p0, "File too large (max 300MB)"

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    invoke-direct {p0, v12, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;J)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v12, v6, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;Ljava/lang/Object;I)V

    iput-object v0, v6, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v12, p2, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;Ljava/lang/Object;I)V

    iput-object v0, p1, Lcom/koushikdutta/async/DataEmitterBase;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    :goto_1
    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p0, v8}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v12, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->securityToken:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "OK"

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iput v7, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {p2, v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_2
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "<anonymous parameter 0>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string p0, "text/html; charset=utf-8"

    iget-object p1, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->getIndexContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/16 p0, 0x1f4

    iput p0, p2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->end()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
