.class public final Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$9;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$9;->this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$9;->this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    invoke-static {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->access$startNotificationPermissionManager(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
