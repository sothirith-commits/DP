.class public final Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/LayoutSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$2;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$2;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$2;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    iget v1, v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->appliedDesktopDpi:I

    add-int/lit16 v1, v1, -0xa0

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$2;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    iget v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->appliedDesktopDpi:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->updateDesktopDpiValue(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
