.class public final Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$5;->this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$5;->this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    invoke-static {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->access$resolveActivity(Lcom/deepalhome/launcher/splash/FirstLaunchView;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;->requestPermission(Landroid/app/Activity;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
