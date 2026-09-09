.class public final synthetic Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/AnimatedImageDrawable;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    iget p0, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/floating/GifTextureView;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/floating/GifTextureView;->$r8$clinit:I

    const-string p0, "$drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
