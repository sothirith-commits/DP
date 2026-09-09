.class public final synthetic Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "$isDismissed"

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$mp"

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    return-void
.end method
