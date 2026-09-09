.class public final Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$2;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$2;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->syncNavigationModeRadioButton()V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$2;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->updateBottomNavSettingsVisibility()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
