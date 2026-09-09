.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/deepalhome/launcher/music/MusicAppWindow;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$5:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(JLcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$0:J

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$1:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$2:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$3:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$4:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$5:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$1:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$path"

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$2:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v3, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressCustomIconRequestId:J

    iget-wide v5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$0:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressStyle()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressCustomIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$3:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda31;->f$5:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
