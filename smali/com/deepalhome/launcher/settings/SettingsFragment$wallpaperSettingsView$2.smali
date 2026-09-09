.class public final Lcom/deepalhome/launcher/settings/SettingsFragment$wallpaperSettingsView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$wallpaperSettingsView$2;->this$0:Lcom/deepalhome/launcher/settings/SettingsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$wallpaperSettingsView$2;->this$0:Lcom/deepalhome/launcher/settings/SettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
