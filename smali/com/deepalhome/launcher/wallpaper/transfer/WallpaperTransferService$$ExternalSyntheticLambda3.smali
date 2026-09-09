.class public final synthetic Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "Upload failed"

    const-string v4, "File too large"

    const-string v6, "Unsupported file type"

    const-string v7, "OK"

    const-string v8, "error"

    const-string v9, "completed"

    const-string v10, "getString(...)"

    const-string v14, "Duplicate file"

    const-string v15, ""

    const-string v2, "digest(...)"

    const-string v11, "$response"

    iget-object v12, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    const-string v13, "this$0"

    const-string v5, "$session"

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-direct {v0, v13, v2, v5, v11}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$IconUploadSession$finish$hash$1;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$IconUploadSession$finish$hash$1;

    invoke-static {v0, v15, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    iget-object v5, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingIconHashes:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-direct {v0, v11, v2, v5, v14}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingIconHashes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_7

    sget-object v5, Lcom/deepalhome/launcher/floating/IconHashCache;->INSTANCE:Lcom/deepalhome/launcher/floating/IconHashCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/deepalhome/launcher/floating/IconHashCache;->saveHash(Ljava/io/File;Ljava/lang/String;)V

    :cond_7
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v0, Ljava/io/File;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    cmp-long v2, v13, v16

    if-gtz v2, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {v2, v13, v5, v0, v11}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    :goto_3
    move-object v0, v2

    goto :goto_5

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_a
    new-instance v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v11, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v2, v13, v5, v0, v11}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    :goto_5
    iget-object v2, v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-boolean v11, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->success:Z

    if-eqz v11, :cond_c

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v13, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->fileName:Ljava/lang/String;

    if-nez v13, :cond_b

    const v13, 0x7f13024f

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v10

    const v13, 0x7f130253

    invoke-virtual {v1, v13, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v13}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_6
    if-eqz v11, :cond_d

    move-object/from16 v20, v9

    goto :goto_7

    :cond_d
    move-object/from16 v20, v8

    :goto_7
    iget-wide v8, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v27

    iget-object v10, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->fileName:Ljava/lang/String;

    iget-wide v13, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->index:J

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->errorMessage:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v21, v10

    move-wide/from16 v22, v8

    move-wide/from16 v24, v13

    move-object/from16 v28, v3

    invoke-virtual/range {v19 .. v28}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v27

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v20, "waiting"

    const/16 v21, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v19 .. v28}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    if-eqz v11, :cond_e

    invoke-virtual {v12, v7}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v2, 0x19f

    goto :goto_8

    :cond_f
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v2, 0x19d

    goto :goto_8

    :cond_10
    const/16 v2, 0x1f4

    :goto_8
    iput v2, v12, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    if-nez v0, :cond_11

    move-object/from16 v1, v18

    goto :goto_9

    :cond_11
    move-object v1, v0

    :goto_9
    invoke-virtual {v12, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    :goto_a
    return-void

    :pswitch_0
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    :goto_b
    :try_start_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_13
    :goto_c
    :try_start_3
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_14
    :goto_d
    if-eqz p1, :cond_16

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_15
    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-direct {v0, v13, v2, v5, v11}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_16
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadSession$finish$hash$1;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadSession$finish$hash$1;

    invoke-static {v0, v15, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    iget-object v5, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingHashes:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-direct {v0, v11, v2, v5, v14}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_10

    :cond_18
    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->existingHashes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    check-cast v0, Ljava/io/File;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1b

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    cmp-long v2, v13, v16

    if-gtz v2, :cond_1a

    goto :goto_f

    :cond_1a
    new-instance v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {v2, v13, v5, v0, v11}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    :goto_e
    move-object v0, v2

    goto :goto_10

    :cond_1b
    :goto_f
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1c
    new-instance v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v11, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v2, v13, v5, v0, v11}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;-><init>(ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_e

    :goto_10
    iget-object v2, v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-boolean v11, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->success:Z

    if-eqz v11, :cond_1f

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v13, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->file:Ljava/io/File;

    if-eqz v13, :cond_1d

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v1, v13, v14, v14}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_1d
    iget-object v13, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->fileName:Ljava/lang/String;

    if-nez v13, :cond_1e

    const v13, 0x7f130495

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v10

    const v13, 0x7f1301ca

    invoke-virtual {v1, v13, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v13}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_1f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_11
    if-eqz v11, :cond_20

    move-object/from16 v20, v9

    goto :goto_12

    :cond_20
    move-object/from16 v20, v8

    :goto_12
    iget-wide v8, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v27

    iget-object v10, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->fileName:Ljava/lang/String;

    iget-wide v13, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->index:J

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->errorMessage:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v21, v10

    move-wide/from16 v22, v8

    move-wide/from16 v24, v13

    move-object/from16 v28, v3

    invoke-virtual/range {v19 .. v28}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v27

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v20, "waiting"

    const/16 v21, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v19 .. v28}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    if-eqz v11, :cond_21

    invoke-virtual {v12, v7}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    goto :goto_15

    :cond_21
    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$UploadResult;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v2, 0x19f

    goto :goto_13

    :cond_22
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v2, 0x19d

    goto :goto_13

    :cond_23
    const/16 v2, 0x1f4

    :goto_13
    iput v2, v12, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    if-nez v0, :cond_24

    move-object/from16 v1, v18

    goto :goto_14

    :cond_24
    move-object v1, v0

    :goto_14
    invoke-virtual {v12, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;)V

    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPart(Lcom/koushikdutta/async/http/body/Part;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v4, "Failed to save file"

    const-string v5, "MD5"

    const-string v6, "Unsupported file type"

    const-string v7, "toLowerCase(...)"

    const-string v8, "US"

    const/16 v9, 0x2e

    const-string v10, ""

    const-string v11, "Content-Type"

    iget-object v13, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    const-string v14, "filename"

    const-string v15, "this$0"

    const-string v2, "$session"

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iget v12, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v12, :pswitch_data_0

    sget-object v12, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, v14}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    check-cast v13, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-eqz v0, :cond_15

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, v1, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, v11}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    :cond_2
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, v1, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, v14}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    :cond_6
    :goto_2
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    const-string v11, "icon_"

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    invoke-static {v0, v9, v10}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->extensionFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v0, v0}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->extensionFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "png"

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    :cond_f
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-nez v0, :cond_14

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-static {v0, v9, v10}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9, v8, v1, v9, v7}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    iput-object v6, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    goto :goto_6

    :cond_12
    invoke-static {v0}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    :try_start_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v5, Ljava/security/DigestOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6, v1}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    iput-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    move-object v4, v0

    :goto_5
    iput-object v4, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    const/4 v1, 0x0

    iput-object v1, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    :cond_14
    :goto_6
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-wide v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v24

    const/16 v25, 0x0

    const-string v17, "receiving"

    iget-wide v4, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->index:J

    move-object/from16 v16, v2

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-virtual/range {v16 .. v25}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    iput-object v0, v13, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    goto :goto_7

    :cond_15
    iget-object v0, v13, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    if-nez v0, :cond_16

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda10;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    iput-object v0, v13, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    :cond_16
    :goto_7
    return-void

    :pswitch_0
    sget-object v12, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda3;->f$1:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, v14}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    check-cast v13, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-eqz v0, :cond_2c

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    iget-object v0, v1, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, v11}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_18
    const/4 v0, 0x0

    :goto_8
    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    :cond_19
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1a
    iget-object v0, v1, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, v14}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v1, 0x0

    goto :goto_9

    :cond_1b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_1d

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->sanitizeFileName$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    :cond_1d
    :goto_a
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_b

    :cond_1e
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->sanitizeFileName$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_20

    :cond_1f
    :goto_b
    const/4 v1, 0x0

    goto :goto_d

    :cond_20
    invoke-static {v0, v9, v10}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    :goto_c
    move-object v1, v0

    goto :goto_d

    :cond_21
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->extensionFromContentType$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_c

    :cond_22
    invoke-static {v0, v0}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "toString(...)"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    iput-object v1, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    if-eqz v1, :cond_24

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->extensionFromContentType$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, "jpg"

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    :cond_26
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    check-cast v0, Ljava/security/DigestOutputStream;

    if-nez v0, :cond_2b

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    goto :goto_f

    :cond_27
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_28

    goto :goto_f

    :cond_28
    invoke-static {v0, v9, v10}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9, v8, v1, v9, v7}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    iput-object v6, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    goto :goto_f

    :cond_29
    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    :try_start_1
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v5, Ljava/security/DigestOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6, v1}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    iput-object v5, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_e

    :cond_2a
    move-object v4, v0

    :goto_e
    iput-object v4, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    const/4 v1, 0x0

    iput-object v1, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    :cond_2b
    :goto_f
    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->params:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-wide v0, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v24

    const/16 v25, 0x0

    const-string v17, "receiving"

    iget-wide v4, v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->index:J

    move-object/from16 v16, v2

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-virtual/range {v16 .. v25}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->sendStatus(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda8;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda8;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    iput-object v0, v13, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    goto :goto_10

    :cond_2c
    iget-object v0, v13, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda8;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;I)V

    iput-object v0, v13, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    :cond_2d
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
