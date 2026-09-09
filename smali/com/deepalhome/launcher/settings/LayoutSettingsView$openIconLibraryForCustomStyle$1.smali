.class public final Lcom/deepalhome/launcher/settings/LayoutSettingsView$openIconLibraryForCustomStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/LayoutSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$openIconLibraryForCustomStyle$1;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string v0, "icon"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicProgressCustomIconPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$openIconLibraryForCustomStyle$1;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    const/4 v1, 0x6

    iput v1, p1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->currentSelectedStyle:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicProgressStyle(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$openIconLibraryForCustomStyle$1;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->updateStyleSelection(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$openIconLibraryForCustomStyle$1;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->loadCustomIconPreview()V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->notifyChanged()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
