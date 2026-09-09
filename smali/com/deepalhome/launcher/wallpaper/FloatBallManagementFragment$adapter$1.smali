.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v2, p1

    check-cast v2, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string p1, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    sget p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getResId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7f08013b

    :goto_0
    sget-object p1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->updateIcon$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;I)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconLibraryPath(Ljava/lang/String;)V

    const p0, 0x7f1301e1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v4, p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;

    const/4 v5, 0x3

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
