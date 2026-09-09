.class public final synthetic Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Landroid/view/TextureView;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/TextureView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda2;->f$0:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string p1, "$textureView"

    iget-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda2;->f$0:Landroid/view/TextureView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$dismissRunnable"

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method
