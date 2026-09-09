.class public final synthetic Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;


# direct methods
.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;->f$0:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 12

    const-string v0, "bb"

    const-string v1, "<anonymous parameter 0>"

    const-string v2, "this$0"

    const-string v3, "$session"

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;->f$0:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    iget v5, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    new-array p0, p0, [B

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {v0, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    iget-object p0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-object p0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void

    :pswitch_0
    sget-object v5, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    new-array p1, p0, [B

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    iget-object v0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    int-to-long v2, p0

    add-long/2addr v0, v2

    iput-wide v0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    const-wide/32 v2, 0x1e00000

    cmp-long p0, v0, v2

    if-lez p0, :cond_4

    const-string p0, "File too large"

    iput-object p0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    goto :goto_1

    :cond_4
    iget-object p0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast p0, Ljava/security/DigestOutputStream;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    iget-object p0, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    iget-wide v10, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->index:J

    invoke-virtual/range {v6 .. v11}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->notifyProgressIfNeeded(Ljava/lang/String;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
