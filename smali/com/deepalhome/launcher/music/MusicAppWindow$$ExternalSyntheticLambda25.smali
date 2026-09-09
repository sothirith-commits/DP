.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;ZLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$1:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    sget v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    iget-object v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v0, "this$0"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    const-string v0, "$path"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$1:Z

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadIcon(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v8, v2

    :goto_0
    if-eqz v6, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v1, v0, v5}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadAnimatedIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;

    iget-wide v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;->f$3:J

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;-><init>(JLcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
