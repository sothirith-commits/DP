.class public final synthetic Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Landroid/view/TextureView;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/TextureView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda1;->f$0:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string p1, "$textureView"

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda1;->f$0:Landroid/view/TextureView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$dismissRunnable"

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
