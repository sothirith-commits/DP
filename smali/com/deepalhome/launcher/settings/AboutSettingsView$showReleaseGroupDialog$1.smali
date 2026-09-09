.class public final Lcom/deepalhome/launcher/settings/AboutSettingsView$showReleaseGroupDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$showReleaseGroupDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$showReleaseGroupDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->checkUpdateWithUserFeedback$default(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
