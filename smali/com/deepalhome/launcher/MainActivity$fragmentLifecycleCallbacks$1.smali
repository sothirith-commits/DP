.class public final Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/MainActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "f"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p1, p2, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    if-nez p1, :cond_0

    instance-of p1, p2, Lcom/deepalhome/launcher/splash/SplashFragment;

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fragmentResumed:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/deepalhome/launcher/MainActivity;->Companion:Lcom/deepalhome/launcher/MainActivity$Companion;

    iget-object p0, p0, Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/MainActivity;->requestRootUiSync(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p4, "fm"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "f"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p1, p2, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    if-nez p1, :cond_0

    instance-of p1, p2, Lcom/deepalhome/launcher/splash/SplashFragment;

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fragmentViewCreated:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/deepalhome/launcher/MainActivity;->Companion:Lcom/deepalhome/launcher/MainActivity$Companion;

    iget-object p0, p0, Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/MainActivity;->requestRootUiSync(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
