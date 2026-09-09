.class public final Lcom/deepalhome/launcher/splash/SplashFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/splash/SplashFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/splash/SplashFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$onViewCreated$1;->this$0:Lcom/deepalhome/launcher/splash/SplashFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$onViewCreated$1;->this$0:Lcom/deepalhome/launcher/splash/SplashFragment;

    iget-boolean v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->hasLaunched:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->launchRequested:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->launchRequested:Z

    sget-object v0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    new-instance v1, Lcom/deepalhome/launcher/splash/SplashFragment$startLauncher$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/splash/SplashFragment$startLauncher$1;-><init>(Lcom/deepalhome/launcher/splash/SplashFragment;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/RootAccessState;->runAfterStartupCheck(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
