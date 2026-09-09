.class public final Lcom/deepalhome/launcher/splash/SplashFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetTextI18n"
    }
.end annotation


# instance fields
.field public firstLaunchView:Lcom/deepalhome/launcher/splash/FirstLaunchView;

.field public hasLaunched:Z

.field public launchRequested:Z

.field public onAgreeToUseListener:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->onAgreeToUseListener:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/deepalhome/launcher/MainActivity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/splash/SplashFragment$onAttach$1;

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/splash/SplashFragment$onAttach$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->onAgreeToUseListener:Lkotlin/jvm/functions/Function0;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p0, "inflater"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0e00fe

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->firstLaunchView:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->setOnCompleted(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    iput-object v1, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->firstLaunchView:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->onAgreeToUseListener:Lkotlin/jvm/functions/Function0;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->hasLaunched:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->firstLaunchView:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->refresh()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p2, 0x7f0b01fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/splash/FirstLaunchView;

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->firstLaunchView:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/deepalhome/launcher/splash/SplashFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/splash/SplashFragment$onViewCreated$1;-><init>(Lcom/deepalhome/launcher/splash/SplashFragment;)V

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->setOnCompleted(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment;->firstLaunchView:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->refresh()V

    :cond_1
    return-void
.end method
