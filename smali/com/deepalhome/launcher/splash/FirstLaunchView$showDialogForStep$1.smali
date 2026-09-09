.class public final Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $appConfig:Lcom/deepalhome/launcher/config/appconfig/AppConfig;

.field final synthetic this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/config/appconfig/AppConfig;Lcom/deepalhome/launcher/splash/FirstLaunchView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$1;->$appConfig:Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$1;->this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$1;->$appConfig:Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    iget-object v1, v1, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->agreementConfig:Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

    iget v1, v1, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementVersion:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setSignedAgreementVersion(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$1;->this$0:Lcom/deepalhome/launcher/splash/FirstLaunchView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->refresh()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
