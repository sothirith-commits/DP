.class public final synthetic Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/deepalhome/launcher/floating/GifTextureView;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/floating/GifTextureView;Landroid/graphics/drawable/AnimatedImageDrawable;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$2:I

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/floating/GifTextureView;

    iput-object p3, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$4:Z

    iput-object p5, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iput-object p6, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function1;

    iput p7, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lcom/deepalhome/launcher/floating/GifTextureView;IIZLjava/lang/String;Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/floating/GifTextureView;

    iput p3, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$3:I

    iput-boolean p5, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$4:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "$path"

    const-string v2, "this$0"

    iget v3, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget v3, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$2:I

    iget-object v4, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/floating/GifTextureView;

    iget-object v5, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-boolean v6, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$4:Z

    iget-object v7, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iget-object v8, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function1;

    iget v1, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$3:I

    sget v9, Lcom/deepalhome/launcher/floating/GifTextureView;->$r8$clinit:I

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->loadGeneration:I

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v5, :cond_2

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRendering()V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/floating/GifTextureView;->releaseDrawable()V

    iput-object v7, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->currentPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->targetSizePx:I

    iput-boolean v0, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->hasDrawable:Z

    :cond_1
    if-eqz v8, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    iget-boolean v0, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRenderLoop()V

    :cond_3
    invoke-virtual {v4}, Lcom/deepalhome/launcher/floating/GifTextureView;->releaseDrawable()V

    iput-object v7, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->currentPath:Ljava/lang/String;

    iput v1, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->targetSizePx:I

    iput-object v5, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->animatedDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/deepalhome/launcher/floating/GifTextureView;->hasDrawable:Z

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/floating/GifTextureView;->startRenderLoop()V

    :cond_4
    if-eqz v8, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void

    :pswitch_0
    iget v3, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$2:I

    sget v4, Lcom/deepalhome/launcher/floating/GifTextureView;->$r8$clinit:I

    iget-object v4, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    const-string v5, "$file"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v11, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/floating/GifTextureView;

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v14, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    const-string v2, "createSource(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v2}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Lkotlin/Result$Failure;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    move-object v0, v4

    :cond_6
    instance-of v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v2, :cond_7

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    move-object v12, v0

    goto :goto_2

    :cond_7
    move-object v12, v4

    :goto_2
    iget-object v0, v11, Lcom/deepalhome/launcher/floating/GifTextureView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;

    iget-boolean v13, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$4:Z

    iget-object v15, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function1;

    iget v10, v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;->f$3:I

    move-object v9, v2

    move/from16 v16, v3

    invoke-direct/range {v9 .. v16}, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;-><init>(ILcom/deepalhome/launcher/floating/GifTextureView;Landroid/graphics/drawable/AnimatedImageDrawable;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
